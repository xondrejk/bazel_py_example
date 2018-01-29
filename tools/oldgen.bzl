def _gen_impl(ctx):
    args = ctx.actions.args()
    args.add(ctx.outputs.out)
    ctx.actions.run(
        outputs = [ctx.outputs.out],
        inputs = [],
        arguments = [args],
        executable = ctx.executable._generator,
    )

oldgen = rule(
    implementation = _gen_impl,
    attrs = {"_generator": attr.label(default=Label("//tools:oldgen"),
                                      executable=True,
                                      cfg="host"),
            },
    outputs = {"out": "%{name}.txt"},
)
