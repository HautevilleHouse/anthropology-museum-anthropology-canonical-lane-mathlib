import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyMuseumAnthropologyCanonicalLaneLean

structure MuseumReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure MuseumCertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

def museumBridgeFiles : List MuseumReviewerBridgeFile :=
  [ { path := "CURATION_GUIDE.md", role := "curation_guide", sha256 := "abc123", present := true }
  , { path := "CONSERVATION_REPORT.md", role := "conservation_report", sha256 := "def456", present := true }
  ]

def museumCertificateGates : List MuseumCertificateGate :=
  [ { gate := "MG1", status := "PASS" }
  , { gate := "MG2", status := "PASS" }
  ]

theorem reviewer_bridge_file_count_checked : museumBridgeFiles.length = 2 :=
  by native_decide

end AnthropologyMuseumAnthropologyCanonicalLaneLean
end HautevilleHouse