<?php

namespace Tests\Services\Production;

use Tests\TestCase;

class UserServiceTestCase extends TestCase
{
    public function setUp()
    {
        parent::setUp();

        $this->service = $this->make(\App\Services\Interfaces\UserServiceInterface::class);

        if ($this->getName() == 'testMustCallModelFunction'
            ||
            $this->getName() == 'testWhenModelThrowException'
        ) {
            $this->modelUser = $this->mock(\App\Models\User::class);
        }
    }

    public function testMustCallModelFunction()
    {
        // Arrange
        $inputs = ['mock array'];

        // Assert
        $this->modelUser
            ->shouldReceive('create')
            ->with($inputs)
            ->once();

        // Action
        $this->service->create($inputs);
    }

    /**
     * @expectedException Exception
     * @expectedExceptionMessage error message
     */
    public function testWhenModelThrowException()
    {
        // Arrange
        $this->modelUser
            ->shouldReceive('create')
            ->andThrow(new \Exception('error message'));

        // Action
        $this->service->create([]);
    }

    public function testCanCreateUser()
    {
        // Arrange
        $inputs = [
            'name' => 'Test name',
            'email' => 'test_email@gmail.com',
            'password' => '12345678'
        ];

        $date = \Carbon\Carbon::now();
        \Carbon\Carbon::setTestNow($date);

        // Action
        $user = $this->service->create($inputs);

        // Assert
        $this->assertInstanceOf(\App\Models\User::class, $user);
        $this->assertEquals($inputs['name'], $user->name);
        $this->assertEquals($inputs['email'], $user->email);
        $this->assertTrue(\Hash::check($inputs['password'], $user->password));
        $this->assertEquals($date->toDateTimeString(), $user->created_at);
        $this->assertEquals($date->toDateTimeString(), $user->updated_at);

        unset($inputs['password']);
        $this->assertDatabaseHas('users', $inputs);
    }

    public function testCanUpdateUser()
    {
        // Arrange
        $oldInputs = collect([
            'name' => 'User 1',
            'email' => 'user1@gmail.com',
            'password' => '12345678'
        ]);

        $original = factory(\App\Models\User::class)->create($oldInputs->all());

        $this->assertDatabaseHas('users', $oldInputs->except('password')->all());

        $inputs = collect([
            'name' => 'User 2',
            'email' => 'user2@gmail.com',
            'password' => '87654321'
        ]);

        $date = \Carbon\Carbon::now();
        \Carbon\Carbon::setTestNow($date);

        // Action
        $user = $this->service->update($original, $inputs->all());

        // Assert
        $this->assertInstanceOf(\App\Models\User::class, $user);
        $this->assertEquals($inputs->get('name'), $user->name);
        $this->assertEquals($inputs->get('email'), $user->email);
        $this->assertTrue(\Hash::check($inputs->get('password'), $user->password));
        $this->assertEquals($date->toDateTimeString(), $user->created_at);
        $this->assertEquals($date->toDateTimeString(), $user->updated_at);
        $this->assertDatabaseHas('users', $inputs->except('password')->all());
        $this->assertDatabaseMissing('users', $oldInputs->except('password')->all());
    }

    public function testCanDeleteUser()
    {
        // Arrange
        $inputs = collect([
            'name' => 'User 1',
            'email' => 'user1@gmail.com',
            'password' => '12345678'
        ]);

        $original = factory(\App\Models\User::class)->create($inputs->all());

        $this->assertDatabaseHas('users', $inputs->except('password')->all());

        // Action
        $result = $this->service->delete($original);

        // Assert
        $this->assertTrue($result);
        $this->assertDatabaseMissing('users', $inputs->except('password')->all());
    }
}
