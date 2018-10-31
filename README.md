# oneview-python-debian

Docker image for the HPE [python-hpOneView](https://github.com/HewlettPackard/python-hpOneView) SDK on Debian

## Usage

`oneview-python-debian` contains no Python code. Everything must be passed in.

Set up a volume or use a bind mount containing the Python code that uses `python-hpOneView`. This can be mounted into the container with `-v` or `--mount`

### Running the container

Assume a named volume `pythoncode`. This can be run with the following commands:

```console
docker run -it --rm \
    -v pythoncode:/pythoncode \
    hewlettpackardenterprise/oneview-python-debian \
```

You will be in a `bash` shell ready to run your Python code:

```console
cd /pythoncode
python my-python-script.py
```

Exit the shell and the container will be destroyed but the Python code in the Docker volume will remain.

### Try it out

The [HPE OneView Python SDK in a container](https://github.com/HewlettPackard/oneview-python-samples/tree/master/oneview-python-in-container) sample has a [how to guide](https://github.com/HewlettPackard/oneview-python-samples/blob/master/oneview-python-in-container/oneview-python-in-container.md) and a Python sample you can use to try out the `oneview-python-debian` container.