require 'test/unit'

class TestCli < Test::Unit::TestCase
  def test_slave_mode
    output = %x(is_master 10.255.255.0 echo 'GOOD!')
    assert_match('I am slave', output)
  end

  def test_master_mode
    output = %x(is_master 127.0.0.1 echo 'GOOD!')
    assert_match('GOOD!', output)
  end
end
