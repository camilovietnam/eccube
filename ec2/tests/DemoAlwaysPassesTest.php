<?php

use PHPUnit\Framework\TestCase;

class DemoSuccessTest extends TestCase {
	public function testAlwaysPasses()
	{
		$a = 2;
		$b = 2;

		$this->assertEquals($a, $b);
	}
}