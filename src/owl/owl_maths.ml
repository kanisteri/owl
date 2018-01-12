(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016-2017 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

module CI = Cstubs_internals


(** [ Mathematics Module ]  *)

let e = Gsl.Math.e

let euler = Gsl.Math.euler

let log2e = Gsl.Math.log2e

let log10e = Gsl.Math.log10e

let sqrt1_2 = Gsl.Math.sqrt1_2

let sqrt2 = Gsl.Math.sqrt2

let sqrt3 = Gsl.Math.sqrt3

let sqrtpi = Gsl.Math.sqrtpi

let pi = Gsl.Math.pi

let pi_2 = Gsl.Math.pi_2

let pi_4 = Gsl.Math.pi_4

let i_1_pi = Gsl.Math.i_1_pi

let i_1_pi = Gsl.Math.i_2_pi

let ln10 = Gsl.Math.ln10

let ln2 = Gsl.Math.ln2

let lnpi = Gsl.Math.lnpi

(** [ Basic and advanced math functions ] *)

let abs x = abs_float x

let neg x = 0. -. x

let reci x = 1. /. x

let signum x = if x = 0. then 0. else if x > 0. then 1. else -1.

let softsign x = x /. (1. +. abs x)

let softplus x = log (1. +. exp x)

let relu x = max 0. x

let floor x = floor x

let ceil x = ceil x

let round_lb = -.(2. ** 52.)
let round_ub = 2. ** 52.
let round t =
  if t >= round_lb && t <= round_ub then
    floor (t +. 0.49999999999999994)
  else t

let trunc x = modf x |> snd

let sqrt x = sqrt x

let pow x y = x ** y

let exp x = Gsl.Sf.exp x

let expm1 x = Gsl.Sf.expm1 x

let exp_mult x y = Gsl.Sf.exp_mult x y

let exprel x = Gsl.Sf.exprel x

let log x = Gsl.Sf.log x

let log1p x = Gsl.Sf.log_1plusx x

let log_abs x = Gsl.Sf.log_abs x

let log2 x = (log x) /. Gsl.Math.ln2

let log10 x = (log x) /. Gsl.Math.ln10

let logN base x = (log x) /. (log base)

let sigmoid x = 1. /. ((exp (-.x)) +. 1.)

let sin x = sin x

let cos x = cos x

let tan x = tan x

let cot x = 1. /. (tan x)

let sec x = 1. /. (cos x)

let csc x = 1. /. (sin x)

let asin x = asin x

let acos x = acos x

let atan x = atan x

let acot x = (Gsl.Math.pi /. 2.) -. (atan x)

let asec x = acos (1. /. x)

let acsc x = asin (1. /. x)

let sinc x = Gsl.Sf.sinc x

let sinh x = sinh x

let cosh x = cosh x

let tanh x = tanh x

let coth x = let a = exp (-2. *. x) in (1. +. a) /. (1. -. a)

let sech x = 1. /. cosh x

let csch x = 1. /. sinh x

let asinh x = Gsl.Math.asinh x

let acosh x = Gsl.Math.acosh x

let atanh x = Gsl.Math.atanh x

let acoth x = atanh (1. /. x)

let asech x = acosh (1. /. x)

let acsch x = asinh (1. /. x)

let lnsinh x = Gsl.Sf.lnsinh x

let lncosh x = Gsl.Sf.lncosh x

let hypot x y = Gsl.Sf.hypot x y

let rect_of_polar ~r ~theta =
  let open Gsl.Fun in
  let x, y = Gsl.Sf.rect_of_polar ~r ~theta in
  x.res, y.res

let polar_of_rect ~x ~y =
  let open Gsl.Fun in
  let a, b = Gsl.Sf.polar_of_rect ~x ~y in
  a.res, b.res

let angle_restrict_symm x = Gsl.Sf.angle_restrict_symm x

let angle_restrict_pos x = Gsl.Sf.angle_restrict_pos x

let airy x =
  let ai = Ctypes.(allocate double 0.) in
  let aip = Ctypes.(allocate double 0.) in
  let bi = Ctypes.(allocate double 0.) in
  let bip = Ctypes.(allocate double 0.) in
  (* TODO: unify exception handling ... *)
  Owl_maths_special.airy x ai aip bi bip |> ignore;
  Ctypes.(!@ai, !@aip, !@bi, !@bip)

let ellipj u m =
  let sn = Ctypes.(allocate double 0.) in
  let cn = Ctypes.(allocate double 0.) in
  let dn = Ctypes.(allocate double 0.) in
  let ph = Ctypes.(allocate double 0.) in
  Owl_maths_special.ellipj u m sn cn dn ph |> ignore;
  Ctypes.(!@sn, !@cn, !@dn, !@ph)

let ellipk m = Owl_maths_special.ellipk m

let ellipkm1 m = Owl_maths_special.ellipkm1 m

let ellipkinc phi m = Owl_maths_special.ellipkinc phi m

let ellipe m = Owl_maths_special.ellipe m

let ellipeinc phi m = Owl_maths_special.ellipeinc phi m

let j0 x = Owl_maths_special.j0 x

let j1 x = Owl_maths_special.j1 x

let jv v x = Owl_maths_special.jv v x

let y0 x = Owl_maths_special.y0 x

let y1 x = Owl_maths_special.y1 x

let yv v x = Owl_maths_special.yv v x

let yn n x = Owl_maths_special.yn n x

let i0 x = Owl_maths_special.i0 x

let i0e x = Owl_maths_special.i0e x

let i1 x = Owl_maths_special.i1 x

let i1e x = Owl_maths_special.i1e x

let k0 x = Owl_maths_special.k0 x

let k0e x = Owl_maths_special.k0e x

let k1 x = Owl_maths_special.k1 x

let k1e x = Owl_maths_special.k1e x

let expn n x = Owl_maths_special.expn n x

let shichi x =
  let si = Ctypes.(allocate double 0.) in
  let ci = Ctypes.(allocate double 0.) in
  Owl_maths_special.shichi x si ci |> ignore;
  Ctypes.(!@si, !@ci)

let shi x = shichi x |> fst

let chi x = shichi x |> snd

let sici x =
  let si = Ctypes.(allocate double 0.) in
  let ci = Ctypes.(allocate double 0.) in
  Owl_maths_special.sici x si ci |> ignore;
  Ctypes.(!@si, !@ci)

let si x = sici x |> fst

let ci x = sici x |> snd

let gamma x = Owl_maths_special.gamma x

let rgamma x = Owl_maths_special.rgamma x

let loggamma x = Owl_maths_special.loggamma x

let gammainc a x  = Owl_maths_special.gammainc a x

let gammaincinv a x  = Owl_maths_special.gammaincinv a x

let gammaincc a x  = Owl_maths_special.gammaincc a x

let gammainccinv a x  = Owl_maths_special.gammainccinv a x

let psi x = Owl_maths_special.psi x

let factorial x = Gsl.Sf.fact x

let double_factorial x = Gsl.Sf.doublefact x

let ln_factorial x = Gsl.Sf.lnfact x

let ln_double_factorial x = Gsl.Sf.lndoublefact x

let combination n x = int_of_float (Gsl.Sf.choose n x)

let combination_float n x = Gsl.Sf.choose n x

let ln_combination n x = Gsl.Sf.lnchoose n x

let taylorcoeff n x = Gsl.Sf.taylorcoeff n x

let poch a x = Gsl.Sf.poch a x

let lnpoch a x = Gsl.Sf.lnpoch a x

let pochrel a x = Gsl.Sf.pochrel a x

let beta a b = Owl_maths_special.beta a b

let betainc a b x = Owl_maths_special.betainc a b x

let betaincinv a b y = Owl_maths_special.betaincinv a b y

let lambert_w0 x = Gsl.Sf.lambert_W0 x

let lambert_w1 x = Gsl.Sf.lambert_Wm1 x

let zeta x q = Owl_maths_special.zeta x q

let zetac x = Owl_maths_special.zetac x

let permutation n k =
  let r = ref 1 in
  for i = 0 to k - 1 do
    r := !r * (n - i)
  done;
  !r

let combination_iterator n k =
  let c = combination n k in
  let x = Gsl.Combi.make n k in
  let i = ref 0 in
  let f = fun () -> (
    let y = match !i < c with
      | true  -> Gsl.Combi.to_array x
      | false -> [||]
    in
    let _ = Gsl.Combi.next x in
    let _ = i := !i + 1 in
    y )
  in f

let permutation_iterator n =
  let c = permutation n n in
  let x = Gsl.Permut.make n in
  let i = ref 0 in
  let f = fun () -> (
    let y = match !i < c with
      | true  -> Gsl.Permut.to_array x
      | false -> [||]
    in
    let _ = Gsl.Permut.next x in
    let _ = i := !i + 1 in
    y )
  in f


let is_odd x = ((Pervasives.abs x) mod 2) = 1


let is_even x = (x mod 2) = 0


let is_pow2 x = (x <> 0) && (x land (x - 1) = 0)



(* ends here *)
