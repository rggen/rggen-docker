# RgGen Docker

This is a Docker image to allow you to use RgGen easily. This image contains:

* [Ruby execution environment](https://hub.docker.com/_/ruby)
* [RgGen](https://github.com/rggen/rggen)
* [RgGen::Verilog](https://github.com/rggen/rggen-verilog)
* [RgGen::VHDL](https://github.com/rggen/rggen-vhdl)

## Usage

### Quick start

Pull and run the image from [Docker Hub](https://hub.docker.com/r/rggendev/rggen-docker):

```
$ docker run -ti --rm -v ${PWD}:/work --user $(id -u):$(id -g) rggendev/rggen-docker:latest -c config.yml -o out block_0.yml
```

In this case, RgGen will take `config.yml` and `block_0.yml` files from the current direcotry and output generated files to the `out` directory.

### Using `rggen-docker` script

The `rggen-docker` script simplifies the execution process. You can use this like below:

```
$ wget https://raw.githubusercontent.com/rggen/rggen-docker/master/exe/rggen-docker
$ chmod +x rggen-docker
$ ./rggen-docker -c config.yml -o out block_0.yml
```

The default Docker image tag (version) and work direcotry are `latest` and the current direcotory.
You can change them by using `--tag` and `--work` option siwtches:

```
$ .rggen-docker --work ../rggen-sample --tag 0.30.1 -o out -c config.yml block_0.yml
```

## Copyright & License

Copyright &copy; 2023 Taichi Ishitani. RgGen Docker is licensed under the [MIT License](https://opensource.org/licenses/MIT), see [LICENSE](LICENSE) for futher details.

## Code of Conduct

Everyone interacting in the RgGen project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rggen/rggen-docker/blob/master/CODE_OF_CONDUCT.md).
