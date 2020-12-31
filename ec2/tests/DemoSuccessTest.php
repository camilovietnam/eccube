<?php

use PHPUnit\Framework\TestCase;

class DemoSuccessTest {

	public function demoTestAlwaysPasses()
	{
		$a = 2;
		$b = 2;

		$this->assertEquals($a, $b);
	}
}