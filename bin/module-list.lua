return function (connection, req, args)
  dofile('httpserver-header.lc')(connection, 200, 'html')

  connection:send('<!DOCTYPE html><html lang="en"><head><meta charset="utf-8"><title>WiFi info</title></head><body><ul>')

  local modulelist = {};
  modulelist[ "core"      ] = { "test" : true             , "docurl" : "http://www.lua.org/manual/5.1/manual.html" };
  modulelist[ "coroutine" ] = { "test" : coroutine ~= nil , "docurl" : "http://www.lua.org/manual/5.1/manual.html#5.2" };
  modulelist[ "string"    ] = { "test" : string    ~= nil , "docurl" : "http://www.lua.org/manual/5.1/manual.html#5.4" };
  modulelist[ "table"     ] = { "test" : table     ~= nil , "docurl" : "http://www.lua.org/manual/5.1/manual.html#5.5" };
  
  modulelist[ "adc" ] = { "test" : adc ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/adc/" };
  modulelist[ "adxl345" ] = { "test" : adxl345 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/adxl345/" };
  modulelist[ "am2320" ] = { "test" : am2320 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/am2320/" };
  modulelist[ "apa102" ] = { "test" : apa102 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/apa102/" };
  modulelist[ "bit" ] = { "test" : bit ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/bit/" };
  modulelist[ "bme280" ] = { "test" : bme280 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/bme280/" };
  modulelist[ "bmp085" ] = { "test" : bmp085 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/bmp085/" };
  modulelist[ "cjson" ] = { "test" : cjson ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/cjson/" };
  modulelist[ "coap" ] = { "test" : coap ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/coap/" };
  modulelist[ "crypto" ] = { "test" : crypto ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/crypto/" };
  modulelist[ "dht" ] = { "test" : dht ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/dht/" };
  modulelist[ "encoder" ] = { "test" : encoder ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/encoder/" };
  modulelist[ "enduser_setup" ] = { "test" : enduser_setup ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/enduser_setup/" };
  modulelist[ "file" ] = { "test" : file ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/file/" };
  modulelist[ "gpio" ] = { "test" : gpio ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/gpio/" };
  modulelist[ "hmc5883l" ] = { "test" : hmc5883l ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/hmc5883l/" };
  modulelist[ "http" ] = { "test" : http ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/http/" };
  modulelist[ "hx711" ] = { "test" : hx711 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/hx711/" };
  modulelist[ "i2c" ] = { "test" : i2c ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/i2c/" };
  modulelist[ "l3g4200d" ] = { "test" : l3g4200d ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/l3g4200d/" };
  modulelist[ "mdns" ] = { "test" : mdns ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/mdns/" };
  modulelist[ "mqtt" ] = { "test" : mqtt ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/mqtt/" };
  modulelist[ "net" ] = { "test" : net ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/net/" };
  modulelist[ "node" ] = { "test" : node ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/node/" };
  modulelist[ "ow" ] = { "test" : ow ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/ow/" };
  modulelist[ "pcm" ] = { "test" : pcm ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/pcm/" };
  modulelist[ "perf" ] = { "test" : perf ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/perf/" };
  modulelist[ "pwm" ] = { "test" : pwm ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/pwm/" };
  modulelist[ "rc" ] = { "test" : rc ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/rc/" };
  modulelist[ "rotary" ] = { "test" : rotary ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/rotary/" };
  modulelist[ "rtcfifo" ] = { "test" : rtcfifo ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/rtcfifo/" };
  modulelist[ "rtcmem" ] = { "test" : rtcmem ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/rtcmem/" };
  modulelist[ "rtctime" ] = { "test" : rtctime ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/rtctime/" };
  modulelist[ "sigma_delta" ] = { "test" : sigma_delta ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/sigma_delta/" };
  modulelist[ "sntp" ] = { "test" : sntp ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/sntp/" };
  modulelist[ "spi" ] = { "test" : spi ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/spi/" };
  modulelist[ "struct" ] = { "test" : struct ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/struct/" };
  modulelist[ "switec" ] = { "test" : switec ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/switec/" };
  modulelist[ "tm1829" ] = { "test" : tm1829 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/tm1829/" };
  modulelist[ "tmr" ] = { "test" : tmr ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/tmr/" };
  modulelist[ "tsl2561" ] = { "test" : tsl2561 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/tsl2561/" };
  modulelist[ "u8g" ] = { "test" : u8g ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/u8g/" };
  modulelist[ "uart" ] = { "test" : uart ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/uart/" };
  modulelist[ "ucg" ] = { "test" : ucg ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/ucg/" };
  modulelist[ "wifi" ] = { "test" : wifi ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/wifi/" };
  modulelist[ "ws2801" ] = { "test" : ws2801 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/ws2801/" };
  modulelist[ "ws2812" ] = { "test" : ws2812 ~= nil , "docurl" : "http://nodemcu.readthedocs.io/en/dev/en/modules/ws2812/" };

  for k,v in pairs(modulelist) do
    connection:send('<li><b><a href="'..modulelist[ k ][ "docurl" ]..'">'..k..'</a></b> ') if modulelist[ k ][ "test" ] then connection:send('yes') else connection:send('no') end connection:send('</li>')
  end

  connection:send('</ul></body></html>')
end
