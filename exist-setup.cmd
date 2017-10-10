spawn java -jar /opt/exist.jar -console

expect "Select target" {
  send "$env(EXIST_HOME)\n"
}

expect "Press 1" {
  send "1\n"
}

expect "press 1" {
  send "1\n"
}

expect "Data dir" {
  send "webapp/WEB-INF/data\r"
}

expect "press 1" {
  send "1\n"
}

expect "Enter password" {
  send "$env(EXIST_PASSWORD)\n"
}

expect "Enter password" {
  send "$env(EXIST_PASSWORD)\n"
}

expect "Maximum memory" {
  send "$env(MAX_MEMORY)\n"
}

expect "Cache memory" {
  send "512\n"
}

expect "press 1" {
  send "1\n"
}

expect -timeout -1 "Console installation done" {
  wait
  exit
}