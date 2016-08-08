{ mkDerivation, attoparsec, base, bytestring, HUnit, io-streams
, network, stdenv, test-framework, test-framework-hunit
, transformers
}:
mkDerivation {
  pname = "io-streams-haproxy";
  version = "1.0.0.0";
  src = ./.;
  libraryHaskellDepends = [
    attoparsec base bytestring io-streams network transformers
  ];
  testHaskellDepends = [
    attoparsec base bytestring HUnit io-streams network test-framework
    test-framework-hunit transformers
  ];
  doCheck = false;
  homepage = "http://snapframework.com/";
  description = "HAProxy protocol 1.5 support for io-streams";
  license = stdenv.lib.licenses.bsd3;
}
