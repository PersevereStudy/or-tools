# Home of constraint solver constraint_solver

package(
    default_visibility = ["//visibility:public"],
)

proto_library(
    name = "assignment_proto",
    srcs = ["assignment.proto"],
)

cc_proto_library(
    name = "assignment_cc_proto",
    deps = [":assignment_proto"],
)

proto_library(
    name = "search_limit_proto",
    srcs = ["search_limit.proto"],
)

cc_proto_library(
    name = "search_limit_cc_proto",
    deps = [":search_limit_proto"],
)

java_proto_library(
    name = "search_limit_java_proto",
    deps = [":search_limit_proto"],
)

proto_library(
    name = "demon_profiler_proto",
    srcs = ["demon_profiler.proto"],
)

cc_proto_library(
    name = "demon_profiler_cc_proto",
    deps = [":demon_profiler_proto"],
)

proto_library(
    name = "solver_parameters_proto",
    srcs = ["solver_parameters.proto"],
)

cc_proto_library(
    name = "solver_parameters_cc_proto",
    deps = ["solver_parameters_proto"],
)

java_proto_library(
    name = "solver_parameters_java_proto",
    deps = [":solver_parameters_proto"],
)

#py_proto_library(
#    name = "assignment_py_pb2",
#    deps = [":assignment_proto"],
#)

#py_proto_library(
#    name = "search_limit_py_pb2",
#    deps = [":search_limit_proto"],
#)

#py_proto_library(
#    name = "demon_profiler_py_pb2",
#    deps = [":demon_profiler_proto"],
#)

#py_proto_library(
#    name = "solver_parameters_py_pb2",
#    deps = [":solver_parameters_proto"],
#)

# ----- Constraint Programming core engine -----

# This is the main library.
cc_library(
    name = "cp",
    srcs = [
        "alldiff_cst.cc",
        "assignment.cc",
        "constraint_solver.cc",
        "constraints.cc",
        "count_cst.cc",
        "default_search.cc",
        "demon_profiler.cc",
        "deviation.cc",
        "diffn.cc",
        "element.cc",
        "expr_array.cc",
        "expr_cst.cc",
        "expressions.cc",
        "graph_constraints.cc",
        "interval.cc",
        "local_search.cc",
        "model_cache.cc",
        "pack.cc",
        "range_cst.cc",
        "resource.cc",
        "sched_constraints.cc",
        "sched_expr.cc",
        "sched_search.cc",
        "search.cc",
        "table.cc",
        "timetabling.cc",
        "trace.cc",
        "utilities.cc",
        "visitor.cc",
    ],
    hdrs = [
        "constraint_solver.h",
        "constraint_solveri.h",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":assignment_cc_proto",
        ":demon_profiler_cc_proto",
        ":search_limit_cc_proto",
        ":solver_parameters_cc_proto",
        "//ortools/base",
        "//ortools/base:file",
        "//ortools/base:recordio",
        "//ortools/base:sysinfo",
        "@com_google_absl//absl/container:flat_hash_map",
        "@com_google_absl//absl/container:flat_hash_set",
        "@com_google_absl//absl/memory",
        "@com_google_absl//absl/strings",
        "@com_google_absl//absl/strings:str_format",
        "@com_google_absl//absl/time",
#        "//third_party/zlib:zlibonly",
        "//ortools/base:bitmap",
        "//ortools/base:int_type",
        "//ortools/base:int_type_indexed_vector",
        "//ortools/base:map_util",
        "//ortools/base:stl_util",
#        "//util/gzip:gzipstring",
        "//ortools/base:hash",
#        "//util/hash:jenkins",
#        "//util/math:fastmath",
        "//ortools/base:mathutil",
        "//ortools/graph:hamiltonian_path",
        "//ortools/util:bitset",
        "//ortools/util:cached_log",
        "//ortools/util:monoid_operation_tree",
        "//ortools/util:piecewise_linear_function",
        "//ortools/util:range_minimum_query",
        "//ortools/util:saturated_arithmetic",
        "//ortools/util:sorted_interval_list",
        "//ortools/util:string_array",
        "//ortools/util:tuple_set",
        "//ortools/util:vector_map",
        "//ortools/base:random",
#        "//util/regexp/re2",
        "//ortools/base:status",
#        "//util/textprogressbar",
        "//ortools/base:timer",
#        "//util/zippy",
    ],
)

# ----- Routing and ArcRouting -----

proto_library(
    name = "routing_enums_proto",
    srcs = ["routing_enums.proto"],
    visibility = ["//visibility:public"],
)

cc_proto_library(
    name = "routing_enums_cc_proto",
    deps = [":routing_enums_proto"],
)

java_proto_library(
    name = "routing_enums_java_proto",
    deps = [":routing_enums_proto"],
)

proto_library(
    name = "routing_parameters_proto",
    srcs = ["routing_parameters.proto"],
    deps = [
        ":routing_enums_proto",
        ":solver_parameters_proto",
        "@com_google_protobuf_cc//:duration_proto",
        "//ortools/util:optional_boolean_proto",
    ],
)

cc_proto_library(
    name = "routing_parameters_cc_proto",
    deps = [":routing_parameters_proto"],
)

java_proto_library(
    name = "routing_parameters_java_proto",
    deps = [":routing_parameters_proto"],
)

#py_proto_library(
#    name = "routing_parameters_py_pb2",
#    deps = [":routing_parameters_proto"],
#)

cc_library(
    name = "routing_parameters",
    srcs = ["routing_parameters.cc"],
    hdrs = ["routing_parameters.h"],
    visibility = ["//visibility:public"],
    deps = [
        ":cp",
        ":routing_enums_cc_proto",
        ":routing_parameters_cc_proto",
        ":solver_parameters_cc_proto",
        "//ortools/base",
        "@com_google_protobuf_cc//:protobuf",
        "@com_google_absl//absl/strings",
        "@com_google_absl//absl/time",
        "//ortools/util:optional_boolean_cc_proto",
        "//ortools/base:statusor",
        "//ortools/base:protoutil",
    ],
)

cc_library(
    name = "routing_flags",
    srcs = [
        "routing_flags.cc",
    ],
    hdrs = ["routing_flags.h"],
    visibility = ["//visibility:public"],
    deps = [
        ":cp",
        ":routing_enums_cc_proto",
        ":routing_parameters",
        ":routing_parameters_cc_proto",
        "//ortools/base",
        "@com_google_protobuf_cc//:protobuf",
        "@com_google_absl//absl/time",
        "//ortools/base:map_util",
        "//ortools/util:optional_boolean_cc_proto",
        "//ortools/base:protoutil",
    ],
)

cc_library(
    name = "routing_types",
    hdrs = ["routing_types.h"],
    visibility = ["//visibility:public"],
    deps = [
        "//ortools/base",
        "//ortools/base:int_type",
    ],
)

cc_library(
    name = "routing_neighborhoods",
    srcs = ["routing_neighborhoods.cc"],
    hdrs = ["routing_neighborhoods.h"],
    deps = [
        ":cp",
        ":routing_types",
    ],
)

cc_library(
    name = "routing_index_manager",
    srcs = ["routing_index_manager.cc"],
    hdrs = ["routing_index_manager.h"],
    visibility = ["//visibility:public"],
    deps = [
        ":routing_types",
        "//ortools/base",
        "@com_google_absl//absl/container:flat_hash_set",
        "//ortools/base:int_type_indexed_vector",
        "//ortools/base:map_util",
    ],
)

cc_library(
    name = "routing",
    srcs = [
        "routing.cc",
        "routing_flow.cc",
        "routing_lp_scheduling.cc",
        "routing_search.cc",
    ],
    hdrs = [
        "routing.h",
        "routing_lp_scheduling.h",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":cp",
        ":routing_enums_cc_proto",
        ":routing_index_manager",
        ":routing_neighborhoods",
        ":routing_parameters",
        ":routing_parameters_cc_proto",
        ":routing_types",
        "//ortools/base",
        "@com_google_protobuf_cc//:protobuf",
        "@com_google_absl//absl/container:flat_hash_map",
        "@com_google_absl//absl/container:flat_hash_set",
        "@com_google_absl//absl/hash",
        "@com_google_absl//absl/memory",
        "@com_google_absl//absl/strings",
        "@com_google_absl//absl/strings:str_format",
        "@com_google_absl//absl/time",
#        "//third_party/kdtree",
        "//ortools/graph",
        "//ortools/base:int_type_indexed_vector",
        "//ortools/base:map_util",
        "//ortools/base:small_map",
        "//ortools/base:small_ordered_set",
        "//ortools/base:stl_util",
        "//ortools/base:hash",
        "//ortools/base:murmur",
        "//ortools/glop:lp_solver",
        "//ortools/graph:christofides",
        "//ortools/graph:connectivity",
        "//ortools/graph:linear_assignment",
        "//ortools/graph:min_cost_flow",
        "//ortools/lp_data",
        "//ortools/lp_data:base",
        "//ortools/sat:theta_tree",
        "//ortools/util:bitset",
        "//ortools/util:optional_boolean_cc_proto",
        "//ortools/util:range_query_function",
        "//ortools/util:saturated_arithmetic",
        "//ortools/util:sorted_interval_list",
        "//ortools/base:adjustable_priority_queue",
        "//ortools/base:protoutil",
    ],
)
