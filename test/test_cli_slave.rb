require 'test/unit'

class TestCliSlave < Test::Unit::TestCase
  def test_missing_arg
    output = %x(is_slave 127.0.0.1)
    assert_match('Usage: ', output)

    output = %x(is_slave)
    assert_match('Usage: ', output)
  end

  def test_slave_mode
    output = %x(is_slave 10.255.255.0 echo 'GOOD!')
    assert_match('GOOD!', output)
  end

  def test_master_mode
    output = %x(is_slave 127.0.0.1 echo 'GOOD!')
    assert_match('I am master', output)
  end

  def test_file_slave_mode
    output = %x(is_slave /tmp/test.txt echo 'GOOD!')
    assert_match('GOOD!', output)
  end

  def test_file_master_mode
    File.write('/tmp/test.txt', '')
    output = %x(is_slave /tmp/test.txt echo 'GOOD!')
    assert_match('I am master', output)
    File.unlink('/tmp/test.txt')
  end
end
