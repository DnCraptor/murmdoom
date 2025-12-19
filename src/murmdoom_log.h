#pragma once

// Simple compile-time logging control.
//
// Define MURMDOOM_QUIET=1 to compile out non-fatal log/warn prints.
// Keep I_Error()/panic() paths intact.

#include <stdio.h>

#if defined(MURMDOOM_QUIET) && (MURMDOOM_QUIET)
#define MURMDOOM_LOG(...) do { } while (0)
#define MURMDOOM_WARN(...) do { } while (0)
#else
#define MURMDOOM_LOG(...) do { printf(__VA_ARGS__); } while (0)
#define MURMDOOM_WARN(...) do { printf(__VA_ARGS__); } while (0)
#endif
