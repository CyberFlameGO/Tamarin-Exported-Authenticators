changequote(<!,!>)
changecom(<!/*!>, <!*/!>)

theory ExportedAuthenticators_lemmas
begin
include(header.m4i)
include(exported_authenticators.m4i)
include(all_lemmas.m4i)

lemma_nonce_secret_initiator

lemma_nonce_secret_receiver

lemma_message_authentication

lemma_exists_I0

lemma exists_Start:
    exists-trace
    "Ex tid #j. Start(tid)@j"

end
