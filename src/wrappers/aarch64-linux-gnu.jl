# Autogenerated wrapper script for Fontconfig_jll for aarch64-linux-gnu
export libfontconfig

using FreeType2_jll
using Bzip2_jll
using Zlib_jll
using Libuuid_jll
using Expat_jll
## Global variables
const PATH_list = String[]
const LIBPATH_list = String[]
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libfontconfig`
const libfontconfig_splitpath = ["lib", "libfontconfig.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libfontconfig_path = ""

# libfontconfig-specific global declaration
# This will be filled out by __init__()
libfontconfig_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libfontconfig = "libfontconfig.so.1"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list

    append!(PATH_list, FreeType2_jll.PATH_list)
    append!(LIBPATH_list, FreeType2_jll.LIBPATH_list)
    append!(PATH_list, Bzip2_jll.PATH_list)
    append!(LIBPATH_list, Bzip2_jll.LIBPATH_list)
    append!(PATH_list, Zlib_jll.PATH_list)
    append!(LIBPATH_list, Zlib_jll.LIBPATH_list)
    append!(PATH_list, Libuuid_jll.PATH_list)
    append!(LIBPATH_list, Libuuid_jll.LIBPATH_list)
    append!(PATH_list, Expat_jll.PATH_list)
    append!(LIBPATH_list, Expat_jll.LIBPATH_list)
    global libfontconfig_path = abspath(joinpath(artifact"Fontconfig", libfontconfig_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libfontconfig_handle = dlopen(libfontconfig_path)
    push!(LIBPATH_list, dirname(libfontconfig_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

