#!/bin/bash

yum update -y
yum install epel-release -y
yum install nginx -y

systemctl start nginx
systemctl enable nginx

mkdir -p /usr/share/doc/HTML

echo "<html>
<body>
    <h1>Hello, World!</h1>
</body>
</html>" | tee /usr/share/doc/HTML/index.html > /dev/null

echo "Nginx installed and started successfully!"