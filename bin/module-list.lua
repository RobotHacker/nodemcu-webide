return function (connection, req, args)
  dofile('httpserver-header.lc')(connection, 200, 'html')

  connection:send('<!DOCTYPE html><html lang="en"><head><meta charset="utf-8"><title>WiFi info</title></head><body>')

  local modulelist = {};
  modulelist[ "core"      ] = { "test" : core      ~= nil , "docurl" : "http://www.lua.org/manual/5.1/manual.html" };
  modulelist[ "coroutine" ] = { "test" : coroutine ~= nil , "docurl" : "http://www.lua.org/manual/5.1/manual.html#5.2" };
  modulelist[ "string"    ] = { "test" : string    ~= nil , "docurl" : "http://www.lua.org/manual/5.1/manual.html#5.4" };
  modulelist[ "table"     ] = { "test" : table     ~= nil , "docurl" : "http://www.lua.org/manual/5.1/manual.html#5.5" };
  
  modulelist[ "adc"       ] = { "test" : adc       ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/master/en/modules/adc/" };
  modulelist[ "adxl345"   ] = { "test" : adxl345   ~= nil , "docurl" : "" };

  connection:send('<p><b>core:</b> ') if core ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>coroutine:</b> ') if coroutine ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>string:</b> ') if string ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>table:</b> ') if table ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')

  connection:send('<p><b>adc:</b> ') if adc ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>adxl345:</b> ') if adxl345 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>am2320:</b> ') if am2320 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>apa102:</b> ') if apa102 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>bit:</b> ') if bit ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>bme280:</b> ') if bme280 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>bmp085:</b> ') if bmp085 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>cjson:</b> ') if cjson ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>coap:</b> ') if coap ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>crypto:</b> ') if crypto ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>dht:</b> ') if dht ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>encoder:</b> ') if encoder ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>enduser_setup:</b> ') if enduser_setup ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>file:</b> ') if file ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>gpio:</b> ') if gpio ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>hmc5883l:</b> ') if hmc5883l ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>http:</b> ') if http ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>hx711:</b> ') if hx711 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>i2c:</b> ') if i2c ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>l3g4200d:</b> ') if l3g4200d ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>mdns:</b> ') if mdns ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>mqtt:</b> ') if mqtt ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>net:</b> ') if net ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>node:</b> ') if node ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>ow:</b> ') if ow ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>pcm:</b> ') if pcm ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>perf:</b> ') if perf ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>pwm:</b> ') if pwm ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>rc:</b> ') if rc ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>rotary:</b> ') if rotary ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>rtcfifo:</b> ') if rtcfifo ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>rtcmem:</b> ') if rtcmem ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>rtctime:</b> ') if rtctime ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>sigma_delta:</b> ') if sigma_delta ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>sntp:</b> ') if sntp ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>spi:</b> ') if spi ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>struct:</b> ') if struct ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>switec:</b> ') if switec ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>tm1829:</b> ') if tm1829 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>tmr:</b> ') if tmr ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>tsl2561:</b> ') if tsl2561 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>u8g:</b> ') if u8g ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>uart:</b> ') if uart ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>ucg:</b> ') if ucg ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>wifi:</b> ') if wifi ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>ws2801:</b> ') if ws2801 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')
  connection:send('<p><b>ws2812:</b> ') if ws2812 ~= nil then connection:send('yes') else connection:send('no') end connection:send('</p>')

  connection:send('</body></html>')
end
