(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

open Ctypes

module Bindings (F : Cstubs.FOREIGN) = struct

  open F

  type c_spmat_d
  let c_spmat_d : c_spmat_d structure typ = structure "c_spmat_d"

  let ml_eigen_spmat_d_new = foreign "c_eigen_spmat_d_new" (int64_t @-> int64_t @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_delete = foreign "c_eigen_spmat_d_delete" (ptr c_spmat_d @-> returning void)

  let ml_eigen_spmat_d_eye = foreign "c_eigen_spmat_d_eye" (int64_t @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_rows = foreign "c_eigen_spmat_d_rows" (ptr c_spmat_d @-> returning int64_t)

  let ml_eigen_spmat_d_cols = foreign "c_eigen_spmat_d_cols" (ptr c_spmat_d @-> returning int64_t)

  let ml_eigen_spmat_d_nnz = foreign "c_eigen_spmat_d_nnz" (ptr c_spmat_d @-> returning int64_t)

  let ml_eigen_spmat_d_get = foreign "c_eigen_spmat_d_get" (ptr c_spmat_d @-> int64_t @-> int64_t @-> returning double)

  let ml_eigen_spmat_d_set = foreign "c_eigen_spmat_d_set" (ptr c_spmat_d @-> int64_t @-> int64_t @-> double @-> returning void)

  let ml_eigen_spmat_d_reset = foreign "c_eigen_spmat_d_reset" (ptr c_spmat_d @-> returning void)

  let ml_eigen_spmat_d_is_compressed = foreign "c_eigen_spmat_d_is_compressed" (ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_compress = foreign "c_eigen_spmat_d_compress" (ptr c_spmat_d @-> returning void)

  let ml_eigen_spmat_d_uncompress = foreign "c_eigen_spmat_d_uncompress" (ptr c_spmat_d @-> returning void)

  let ml_eigen_spmat_d_reshape = foreign "c_eigen_spmat_d_reshape" (ptr c_spmat_d @-> int64_t @-> int64_t @-> returning void)

  let ml_eigen_spmat_d_prune = foreign "c_eigen_spmat_d_prune" (ptr c_spmat_d @-> double @-> double @-> returning void)

  let ml_eigen_spmat_d_valueptr = foreign "c_eigen_spmat_d_valueptr" (ptr c_spmat_d @-> ptr int64_t @-> returning (ptr double))

  let ml_eigen_spmat_d_innerindexptr = foreign "c_eigen_spmat_d_innerindexptr" (ptr c_spmat_d @-> returning (ptr int64_t))

  let ml_eigen_spmat_d_outerindexptr = foreign "c_eigen_spmat_d_outerindexptr" (ptr c_spmat_d @-> returning (ptr int64_t))

  let ml_eigen_spmat_d_clone = foreign "c_eigen_spmat_d_clone" (ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_row = foreign "c_eigen_spmat_d_row" (ptr c_spmat_d @-> int64_t @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_col = foreign "c_eigen_spmat_d_col" (ptr c_spmat_d @-> int64_t @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_transpose = foreign "c_eigen_spmat_d_transpose" (ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_adjoint = foreign "c_eigen_spmat_d_adjoint" (ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_diagonal = foreign "c_eigen_spmat_d_diagonal" (ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_trace = foreign "c_eigen_spmat_d_trace" (ptr c_spmat_d @-> returning double)

  let ml_eigen_spmat_d_is_zero = foreign "c_eigen_spmat_d_is_zero" (ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_is_positive = foreign "c_eigen_spmat_d_is_positive" (ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_is_negative = foreign "c_eigen_spmat_d_is_negative" (ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_is_nonpositive = foreign "c_eigen_spmat_d_is_nonpositive" (ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_is_nonnegative = foreign "c_eigen_spmat_d_is_nonnegative" (ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_is_equal = foreign "c_eigen_spmat_d_is_equal" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_is_unequal = foreign "c_eigen_spmat_d_is_unequal" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_is_greater = foreign "c_eigen_spmat_d_is_greater" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_is_smaller = foreign "c_eigen_spmat_d_is_smaller" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_equal_or_greater = foreign "c_eigen_spmat_d_equal_or_greater" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_equal_or_smaller = foreign "c_eigen_spmat_d_equal_or_smaller" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning int)

  let ml_eigen_spmat_d_add = foreign "c_eigen_spmat_d_add" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_sub = foreign "c_eigen_spmat_d_sub" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_mul = foreign "c_eigen_spmat_d_mul" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_div = foreign "c_eigen_spmat_d_div" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_dot = foreign "c_eigen_spmat_d_dot" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_add_scalar = foreign "c_eigen_spmat_d_add_scalar" (ptr c_spmat_d @-> double @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_sub_scalar = foreign "c_eigen_spmat_d_sub_scalar" (ptr c_spmat_d @-> double @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_mul_scalar = foreign "c_eigen_spmat_d_mul_scalar" (ptr c_spmat_d @-> double @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_div_scalar = foreign "c_eigen_spmat_d_div_scalar" (ptr c_spmat_d @-> double @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_min2 = foreign "c_eigen_spmat_d_min2" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_max2 = foreign "c_eigen_spmat_d_max2" (ptr c_spmat_d @-> ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_sum = foreign "c_eigen_spmat_d_sum" (ptr c_spmat_d @-> returning double)

  let ml_eigen_spmat_d_min = foreign "c_eigen_spmat_d_min" (ptr c_spmat_d @-> returning double)

  let ml_eigen_spmat_d_max = foreign "c_eigen_spmat_d_max" (ptr c_spmat_d @-> returning double)

  let ml_eigen_spmat_d_abs = foreign "c_eigen_spmat_d_abs" (ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_neg = foreign "c_eigen_spmat_d_neg" (ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_sqrt = foreign "c_eigen_spmat_d_sqrt" (ptr c_spmat_d @-> returning (ptr c_spmat_d))

  let ml_eigen_spmat_d_print = foreign "c_eigen_spmat_d_print" (ptr c_spmat_d @-> returning void)

end