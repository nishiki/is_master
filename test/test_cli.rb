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

  def test_missing_arg
    output = %x(is_master 127.0.0.1)
    assert_match('Usage: ', output)

    output = %x(is_master)
    assert_match('Usage: ', output)
  end
end
