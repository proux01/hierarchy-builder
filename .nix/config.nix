{
  format = "1.0.0";
  attribute = "hierarchy-builder";
  default-bundle = "coq-8.18";
  bundles = let
    mcHBcommon = {
      mathcomp.override.version = "master";
      mathcomp.job = true;
      mathcomp-single.job = true;
      graph-theory.job = false;
      fourcolor.override.version = "master";
      odd-order.override.version = "master";
      mathcomp-finmap.override.version = "master";
      mathcomp.analyis.override.version = "hierarchy-builder";
      reglang.override.version = "master";
      coq-bits.override.version = "master";
      deriving.override.version = "master";
      mathcomp-bigenough.override.version = "master";
      multinomials.override.version = "master";
      mathcomp-real-closed.override.version = "master";
      coqeal.override.version = "master";
    };
  in {
    "coq-master".coqPackages = mcHBcommon // {
      coq.override.version = "proux01:ssrmatching_primitive_proj";
      coq-elpi.override.version = "coq-master";
      bignums.override.version = "master";
      paramcoq.override.version = "master";
    };

    "coq-8.19".coqPackages = mcHBcommon // {
      coq.override.version = "8.19";
    };

    "coq-8.18".coqPackages = mcHBcommon // {
      coq.override.version = "8.18";
    };

  };
  cachix.coq = {};
  cachix.coq-community = {};
  cachix.math-comp.authToken = "CACHIX_AUTH_TOKEN";

}
