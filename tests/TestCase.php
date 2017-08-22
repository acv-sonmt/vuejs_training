<?php

namespace Tests;

use Illuminate\Foundation\Testing\TestCase as BaseTestCase;

use Schema;
use Mockery;
use Carbon\Carbon;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

abstract class TestCase extends BaseTestCase
{
    use CreatesApplication, DatabaseMigrations, DatabaseTransactions;

    /**
     * Method that will run before each test
     */
    public function setUp() {
        parent::setUp();

        // Disable foreignKeyConstraints
        Schema::disableForeignKeyConstraints();
    }

    /**
     * Method that will run after each test
     */
    public function tearDown()
    {
        // Rollback foreignKeyConstraints
        Schema::enableForeignKeyConstraints();

        if (Carbon::hasTestNow()) {
            Carbon::setTestNow(); // Clear the mock
        }

        parent::tearDown();
    }

    /**
     * Make a application class
     *
     * @param string $class
     * @return Object
     */
    public function make($class)
    {
        return $this->app->make($class);
    }

    /**
     * Make a application mock
     *
     * @param string $class
     * @return Object
     */
    public function mock($class)
    {
        $mock = Mockery::mock($class);
        $this->app->instance($class, $mock);

        return $mock;
    }
}
