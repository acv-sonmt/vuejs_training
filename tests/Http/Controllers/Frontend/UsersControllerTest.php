<?php

namespace Tests\Http\Controllers\Frontend;

use Tests\TestCase;

class UsersControllerTest extends TestCase
{
    public function setUp()
    {
        parent::setUp();

        $this->service = $this->mock(\App\Services\Interfaces\UserServiceInterface::class);
    }

    public function testAccessCreateUserPage()
    {
        $response = $this->get('/users/create');

        $response
            ->assertStatus(200)
            ->assertViewIs('frontend.users.create')
        ;
    }

    public function testValidateDataBeforeStoreUser()
    {
        $response = $this->post('/users', []);

        $response
            ->assertStatus(302)
            ->assertRedirect(url('/'))
            ->assertSessionHasErrors([
                'name',
                'email',
                'password'
            ])
        ;
    }

    public function testWhenServiceThrowException()
    {
        $inputs = [
            'name' => 'Nguyen Van A',
            'email' => 'nguyenvana@gmail.com',
            'password' => '12345678'
        ];

        $this->service
            ->shouldReceive('create')
            ->once()
            ->with($inputs)
            ->andThrow(new \Exception('Exception message', 500));

        $response = $this->post('/users', $inputs);

        $response
            ->assertStatus(500)
            ->assertSee('Exception message')
        ;
    }

    public function testStoreUserSuccessfully()
    {
        $inputs = [
            'name' => 'Nguyen Van A',
            'email' => 'nguyenvana@gmail.com',
            'password' => '12345678'
        ];

        $user = factory(\App\Models\User::class)->make($inputs);

        $this->service
            ->shouldReceive('create')
            ->once()
            ->with($inputs)
            ->andReturn($user);

        $response = $this->post('/users', $inputs);

        $response
            ->assertStatus(302)
            ->assertRedirect(route('users.index'))
            ->assertSessionHas('message-success', trans('Create user succesfully.'));
        ;
    }

    public function testStoreUserFail()
    {
        $inputs = [
            'name' => 'Nguyen Van A',
            'email' => 'nguyenvana@gmail.com',
            'password' => '12345678'
        ];

        $this->service
            ->shouldReceive('create')
            ->once()
            ->with($inputs)
            ->andReturn(false);

        $response = $this->post('/users', $inputs);

        $response
            ->assertStatus(500)
            ->assertSee(trans('Create user failed. Please try later.'))
        ;
    }
}
