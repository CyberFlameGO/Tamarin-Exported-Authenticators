changequote(<!,!>)
changecom(<!/*!>, <!*/!>)

theory ExportedAuthenticators_lemmas
begin
include(header.m4i)
include(model.m4i)
include(all_lemmas.m4i)

lemma_uniq_tid

lemma_tid_invariant

lemma_one_start_per_tid

lemma_good_start

lemma_constant_peer
lemma_consistent_nonce
lemma_reachable_session_keys
lemma_secret_session_keys

lemma_cert_ownership

lemma_cert_linking
end
