# rustを動かしてみる



テンプレあった 

[https://hub.docker.com/\_/rust](https://hub.docker.com/_/rust)

```text
FROM rust:1.31

WORKDIR /usr/src/myapp
COPY . .

RUN cargo install --path .

CMD ["myapp"]
```

これでいける！！



```bash
❯ docker build -t my-rust-app .                                                                                                                                                                                                                                      Sending build context to Docker daemon   38.4kB                                                                                                                                                                                                                      Step 1/5 : FROM rust:1.31                                                                                                                                                                                                                                            1.31: Pulling from library/rust                                                                                                                                                                                                                                      cd8eada9c7bb: Pull complete                                                                                                                                                                                                                                          c2677faec825: Pull complete                                                                                                                                                                                                                                          fcce419a96b1: Pull complete                                                                                                                                                                                                                                          045b51e26e75: Pull complete                                                                                                                                                                                                                                          3b969ad6f147: Pull complete                                                                                                                                                                                                                                          2074c6bfed7d: Pull complete                                                                                                                                                                                                                                          Digest: sha256:e2c4e3751290e30c3f130ef3513c7999aee87b5e7ac91e2fc9f3addcdf1f1387                                                                                                                                                                                      Status: Downloaded newer image for rust:1.31                                                                                                                                                                                                                          ---> 6f61eb35ad91                                                                                                                                                                                                                                                   Step 2/5 : WORKDIR /usr/src/myapp                                                                                                                                                                                                                                     ---> Running in 95da21250478                                                                                                                                                                                                                                        Removing intermediate container 95da21250478                                                                                                                                                                                                                          ---> 30baffbb7ef5                                                                                                                                                                                                                                                   Step 3/5 : COPY . .                                                                                                                                                                                                                                                   ---> 1fa37b80b9c8                                                                                                                                                                                                                                                   Step 4/5 : RUN cargo install --path .                                                                                                                                                                                                                                 ---> Running in 8525c7bd068f                                                                                                                                                                                                                                        error: `/usr/src/myapp` is not a crate root; specify a crate to install from crates.io, or use --path or --git to specify an alternate source                                                                                                                                                                                                                                                                                                                                                                                             Caused by:                                                                                                                                                                                                                                                             failed to read `/usr/src/myapp/Cargo.toml`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Caused by:                                                                                                                                                                                                                                                             No such file or directory (os error 2)                                                                                                                                                                                                                             The command '/bin/sh -c cargo install --path .' returned a non-zero code: 101 
```

いけない。そういうもんだよね。。

cargoはいってないんじゃね？？ cargo -vあるかな？？

```bash
❯ docker build -t my-rust-app .                                                                                                                                                                                                                                      Sending build context to Docker daemon   38.4kB                                                                                                                                                                                                                      Step 1/6 : FROM rust:1.31                                                                                                                                                                                                                                             ---> 6f61eb35ad91                                                                                                                                                                                                                                                   Step 2/6 : WORKDIR /usr/src/myapp                                                                                                                                                                                                                                     ---> Using cache                                                                                                                                                                                                                                                     ---> 30baffbb7ef5                                                                                                                                                                                                                                                   Step 3/6 : COPY . .                                                                                                                                                                                                                                                   ---> 15a7e974ab07                                                                                                                                                                                                                                                   Step 4/6 : RUN cargo -v                                                                                                                                                                                                                                               ---> Running in 647ee25bda4d                                                                                                                                                                                                                                        Rust's package manager                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    USAGE:                                                                                                                                                                                                                                                                   cargo [OPTIONS] [SUBCOMMAND]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OPTIONS:                                                                                                                                                                                                                                                                 -V, --version           Print version info and exit                                                                                                                                                                                                                      --list              List installed commands                                                                                                                                                                                                                          --explain <CODE>    Run `rustc --explain CODE`                                                                                                                                                                                                                   -v, --verbose           Use verbose output (-vv very verbose/build.rs output)                                                                                                                                                                                        -q, --quiet             No output printed to stdout                                                                                                                                                                                                                      --color <WHEN>      Coloring: auto, always, never                                                                                                                                                                                                                    --frozen            Require Cargo.lock and cache are up to date                                                                                                                                                                                                      --locked            Require Cargo.lock is up to date                                                                                                                                                                                                             -Z <FLAG>...            Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details                                                                                                                                                                      -h, --help              Prints help information                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Some common cargo commands are (see all commands with --list):                                                                                                                                                                                                           build       Compile the current package                                                                                                                                                                                                                              check       Analyze the current package and report errors, but don't build object files                                                                                                                                                                              clean       Remove the target directory                                                                                                                                                                                                                              doc         Build this package's and its dependencies' documentation                                                                                                                                                                                                 new         Create a new cargo package                                                                                                                                                                                                                               init        Create a new cargo package in an existing directory                                                                                                                                                                                                      run         Build and execute src/main.rs                                                                                                                                                                                                                            test        Run the tests                                                                                                                                                                                                                                            bench       Run the benchmarks                                                                                                                                                                                                                                       update      Update dependencies listed in Cargo.lock                                                                                                                                                                                                                 search      Search registry for crates                                                                                                                                                                                                                               publish     Package and upload this package to the registry                                                                                                                                                                                                          install     Install a Rust binary                                                                                                                                                                                                                                    uninstall   Uninstall a Rust binary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   See 'cargo help <command>' for more information on a specific command.                                                                                                                                                                                               Removing intermediate container 647ee25bda4d                                                                                                                                                                                                                          ---> 620da2e768fd                                                                                                                                                                                                                                                   Step 5/6 : RUN cargo install --path .                                                                                                                                                                                                                                 ---> Running in 8f8b93d706b9
error: `/usr/src/myapp` is not a crate root; specify a crate to install from crates.io, or use --path or --git to specify an alternate source

Caused by:
  failed to read `/usr/src/myapp/Cargo.toml`

Caused by:
  No such file or directory (os error 2)
The command '/bin/sh -c cargo install --path .' returned a non-zero code: 101
```

あるね。。

あ。。

```bash
Caused by:
  failed to read `/usr/src/myapp/Cargo.toml`
```

tomlがないのね なにそれ

バージョン管理ね [https://doc.rust-lang.org/cargo/reference/manifest.html](https://doc.rust-lang.org/cargo/reference/manifest.html)

バージョン管理してるんなら、yarnと一緒でしょ。。init あるでしょ

あるね [https://doc.rust-lang.org/cargo/commands/cargo-init.html](https://doc.rust-lang.org/cargo/commands/cargo-init.html)



```bash
❯ docker build -t my-rust-app .
Sending build context to Docker daemon   38.4kB
Step 1/6 : FROM rust:1.31
 ---> 6f61eb35ad91
Step 2/6 : WORKDIR /usr/src/myapp
 ---> Using cache
 ---> 30baffbb7ef5
Step 3/6 : COPY . .
 ---> b7d4d7c16e47
Step 4/6 : RUN cargo init .
 ---> Running in ffbb8b5eab1f
error: Failed to create package `myapp` at `/usr/src/myapp/.`

Caused by:
  could not determine the current user, please set $USER
```

環境変数$USERがないと。。

たしかに、必要って書いてる [https://doc.rust-lang.org/cargo/commands/cargo-init.html](https://doc.rust-lang.org/cargo/commands/cargo-init.html)

こうやるのね [https://stackoverflow.com/a/39598751/10677105](https://stackoverflow.com/a/39598751/10677105)

```text
FROM rust:1.31
WORKDIR /usr/src/myapp
COPY . .

ENV USER=kajiri
RUN cargo init .

RUN cargo install --path .

CMD ["myapp"]
```

どうかな

```bash
❯ docker build -t my-rust-app .
Sending build context to Docker daemon   38.4kB
Step 1/7 : FROM rust:1.31
 ---> 6f61eb35ad91
Step 2/7 : WORKDIR /usr/src/myapp
 ---> Using cache
 ---> 30baffbb7ef5
Step 3/7 : COPY . .
 ---> d7f0b4278700
Step 4/7 : ENV USER=kajiri
 ---> Running in 22ae35b3cf8f
Removing intermediate container 22ae35b3cf8f
 ---> 3b4ac5598407
Step 5/7 : RUN cargo init .
 ---> Running in 9ade025832d9
     Created binary (application) package
Removing intermediate container 9ade025832d9
 ---> eff329512744
Step 6/7 : RUN cargo install --path .
 ---> Running in 3126b73d74da
  Installing myapp v0.1.0 (/usr/src/myapp)
   Compiling myapp v0.1.0 (/usr/src/myapp)
    Finished release [optimized] target(s) in 0.27s
  Installing /usr/local/cargo/bin/myapp
Removing intermediate container 3126b73d74da
 ---> 1d6783aca4b4
Step 7/7 : CMD ["myapp"]
 ---> Running in e9a028782a23
Removing intermediate container e9a028782a23
 ---> 68991ec53954
Successfully built 68991ec53954
Successfully tagged my-rust-app:latest
```

よさそう ご飯たべるのわすれてたよ

```bash
❯ docker run -it --rm --name my-running-app my-rust-app
Hello, world!
```

うごいたうごいた

これだと、dockerにはいって頑張るしかないなめんどい

composeにしよう

これはいい感じに見える [https://techblog.primestructure.co.jp/2019/08/18/docker-%E3%81%A7-rust-%E3%81%8C%E5%8B%95%E3%81%8F%E7%92%B0%E5%A2%83%E3%82%92%E6%A7%8B%E7%AF%89%E3%81%99%E3%82%8B/](https://techblog.primestructure.co.jp/2019/08/18/docker-%E3%81%A7-rust-%E3%81%8C%E5%8B%95%E3%81%8F%E7%92%B0%E5%A2%83%E3%82%92%E6%A7%8B%E7%AF%89%E3%81%99%E3%82%8B/)

"????? だぶるーくぉーてーしょんね [http://www.eonet.ne.jp/~usakuma/hptec/hp\_tec/hptec\_style\_41.htm](http://www.eonet.ne.jp/~usakuma/hptec/hp_tec/hptec_style_41.htm)

だぶるくぉーてーしょんにした

いろいろコピペしてきた 動くかな

```bash
❯ dcu -d
Starting docker_rust_1 ... done

root@LAPTOP-172317KL ~/ghq/github.com/kajirikajiri/rustBook/docker master*
❯ dp
CONTAINER ID        IMAGE               COMMAND             CREATED              STATUS              PORTS                  NAMES
846d3a4d2537        docker_rust         "bash"              About a minute ago   Up 4 seconds        0.0.0.0:8999->80/tcp   docker_rust_1

root@LAPTOP-172317KL ~/ghq/github.com/kajirikajiri/rustBook/docker master*
❯ dexec docker_rust_1 bash
root@846d3a4d2537:/src# exit

root@LAPTOP-172317KL ~/ghq/github.com/kajirikajiri/rustBook/docker master* 28s
❯ code .

root@LAPTOP-172317KL ~/ghq/github.com/kajirikajiri/rustBook/docker master*
❯ dexec docker_rust_1 bash
root@846d3a4d2537:/src# cargo init
     Created binary (application) package
root@846d3a4d2537:/src# ls
Cargo.toml  docker  src
root@846d3a4d2537:/src# vi
bash: vi: command not found
root@846d3a4d2537:/src# ls src
main.rs
root@846d3a4d2537:/src# cat src/main.rs
fn main() {
  let a = 5;
  let b = 10;
  println!(&quot;{} + {} = {}です。&quot;, a, b, a + b);
}root@846d3a4d2537:/src# cargo run
   Compiling src v0.1.0 (/src)
error: unknown start of token: \u{3002}
 --> src/main.rs:4:32
  |
4 |   println!(&quot;{} + {} = {}です。&quot;, a, b, a + b);
  |                                  ^^
  |
help: Unicode character '。' (Ideographic Full Stop) looks like '.' (Period), but it is not
  |
4 |   println!(&quot;{} + {} = {}です.&quot;, a, b, a + b);
  |                                  ^

error: expected token: `,`
 --> src/main.rs:4:17
  |
4 |   println!(&quot;{} + {} = {}です。&quot;, a, b, a + b);
  |                 ^ expected `,`

error: aborting due to 2 previous errors

error: could not compile `src`.
```

はい、ダブルクォーテーションね

```bash
root@846d3a4d2537:/src# cargo run
   Compiling src v0.1.0 (/src)
    Finished dev [unoptimized + debuginfo] target(s) in 0.17s
     Running `target/debug/src`
5 + 10 = 15です。
```

うごいたうごいた

さんぷるをやっていこう

いろいろやれそう [https://doc.rust-lang.org/book/ch00-00-introduction.html](https://doc.rust-lang.org/book/ch00-00-introduction.html)

rust language server いれよう [https://marketplace.visualstudio.com/items?itemName=rust-lang.rust](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust)

rustupないっていうな [https://github.com/rust-lang/rls-vscode/issues/585](https://github.com/rust-lang/rls-vscode/issues/585) あと、どっかにでふぉはnightlyだから、stableにしろってかいてた。

```javascript
{
    "rust-client.useWSL": true,
    "rust-client.revealOutputChannelOn": "info",
    "rust-client.rustupPath": "~/.cargo/bin/rustup",
    "rust-client.channel": "stable"
}
```

うごかないのな

```bash
root@846d3a4d2537:/src# which rustup
/usr/local/cargo/bin/rustup
```

あ、rust入れたのwslの中のdocker内部だけだから、wslにインストールしないといけない。いれよう [https://www.rust-lang.org/tools/install](https://www.rust-lang.org/tools/install)

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

rustupないって。。

[https://github.com/rust-lang/rls-vscode/issues/237\#issuecomment-478299249](https://github.com/rust-lang/rls-vscode/issues/237#issuecomment-478299249) なるほど、

```bash
vscodeを終了する
rustup update
cargo clean
cargo check && cargo build
```

うごいたうごいた

{% embed url="https://www.youtube.com/watch?v=IgeUAB0phmQ" %}

