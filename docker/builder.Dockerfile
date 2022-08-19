# FROM emscripten/emsdk:3.1.19
FROM emscripten/emsdk:2.0.34
# FROM emscripten/emsdk:1.39.20
# FROM emscripten/emsdk:1.39.7
# FROM emscripten/emsdk:1.40.1

RUN curl https://nim-lang.org/choosenim/init.sh -sSf | sh -s -- -y
ENV PATH="${PATH}:/root/.nimble/bin"
RUN echo "$PATH"
RUN echo "$PATH" && choosenim 1.6.6

ADD app.nimble /code/app.nimble
WORKDIR /code
RUN nimble install --depsOnly -y
