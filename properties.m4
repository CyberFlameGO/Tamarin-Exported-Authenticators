changequote(<!,!>)
changecom(<!/*!>, <!*/!>)

theory ExportedAuthenticators_lemmas
begin
include(header.m4i)
include(exported_authenticators.m4i)
include(all_lemmas.m4i)

lemma_uniq_tid

lemma_tid_invariant

lemma_one_start_per_tid

lemma_exists_Start

dnl lemma_exists_state(C_Send)
dnl lemma_exists_state(S_Send)
dnl lemma_exists_state(A_Send)
dnl lemma_exists_state(C_Recv)
dnl lemma_exists_state(S_Recv)
dnl lemma_exists_state(A_Recv)

lemma_constant_peer

lemma_can_loop_state(S_Send)
lemma_can_loop_state(C_Send)
lemma_can_loop_state(S_Recv)
lemma_can_loop_state(C_Recv)

lemma_secret_session_keys

lemma_cert_ownership

end
