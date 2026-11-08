<?php
// PHPUnit test - vendor/bin/phpunit HelloTest.php
use PHPUnit\Framework\TestCase;

function add(int $a, int $b): int {
    return $a + $b;
}

class HelloTest extends TestCase {
    public function testAddition(): void {
        $this->assertEquals(5, add(2, 3));
    }

    public function testString(): void {
        $this->assertStringContainsString("Hello", "Hello PHPUnit!");
    }
}
