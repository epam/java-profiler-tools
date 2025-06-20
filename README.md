# FlameGraph + Async Profiler as Docker Image

This is a Docker image containing [Brendan Gregg's FlameGraph](https://github.com/brendangregg/FlameGraph) and [Andrei Pangin's Async Profiler](https://github.com/async-profiler/async-profiler).

The container is especially useful for profiling Java applications in remote or production environments where installing additional tools is undesirable or restricted. In such cases, the container can be launched on demand, attached to a running Java process, and removed afterward without leaving a footprint.

Usage example can be found in [this article](https://ember.deltixlab.com/docs/kb/profiling/?_highlight=perf#profiling-ember-with-perf).
