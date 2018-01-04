changequote(<!,!>)
changecom(<!/*!>, <!*/!>)

define(<!State!>,<!F_State($1, shift($@))!>)
theory ExportedAuthenticators_Reachability
begin
include(header.m4i)dnl

include(crypto.m4i)dnl
include(msgs.m4i)dnl

include(pki.m4i)dnl
include(channel.m4i)dnl
include(client.m4i)dnl
include(server.m4i)dnl
include(adversary.m4i)dnl
include(all_lemmas.m4i)dnl
include(at_most_of.m4i)dnl

lemma_pre_tid_invariant

lemma_tid_invariant

lemma_one_prestart_per_tid

lemma_one_start_per_tid

lemma_exists_Start

lemma_constant_peer

lemma_start_self

lemma_self_reference

at_most_of(1, C0, 1)
at_most_of(0, C_Req, 2)
at_most_of(1, C_RecvReq, 1)
at_most_of(1, C_Send, 1)
at_most_of(0, C_Recv, 1) 
at_most_of(1, S0, 1)
at_most_of(1, S_Req, 2)
at_most_of(0, S_RecvReq, 1)
at_most_of(0, S_Send, 1)
at_most_of(1, S_Recv, 1)

lemma exists_advs:
exists-trace
  "Ex iid actor peer #i. StartI(iid, actor, peer, 'server')@i"

lemma_good_start

lemma_C_send_RecvReq

lemma_exists_state(C1)
lemma_exists_state(S1)
lemma_exists_state(C_RecvReq)
lemma_exists_CReq
lemma_exists_state(C_Send)
lemma_exists_state(S_Send)
lemma_exists_state(C_Recv)
lemma_exists_state(S_Recv)

lemma_can_loop_state(S_Send)
lemma_can_loop_state(C_Send)
lemma_can_loop_state(S_Recv)
lemma_can_loop_state(C_Recv)

end
