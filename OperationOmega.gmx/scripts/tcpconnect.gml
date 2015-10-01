/*
  creates a socket and connects to the ip and port
  Argument0 = Ip to connect to.
  Argument1 = Port to connect to.
  Argument2 = Blocking(0)/Non-blocking(1)/Non-blocking++(2) mode.
  Argument3 = Type of connection:
                0: IPv4 or IPv6
                1: Ipv4
                2: Ipv6
                //Using something like "localhost" can use either IPv4 or IPv6,
                //If you specify an address like 127.0.0.1, and try connecting to IPv6, it will fail.
  Set argument2 to 2 if you want it to be non-blocking and also not freeze
  the game while it is connecting. Use tcpconnected() to find out when it has
  connected
*/
return external_call(global._SokA, argument0, argument1, argument2, argument3);
