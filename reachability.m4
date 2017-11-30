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
include(all_lemmas.m4i)dnl
include(at_most_of.m4i)dnl

lemma_one_start_per_tid

lemma_exists_Start

lemma_tid_invariant

at_most_of(1, C0, 1)
at_most_of(0, C_Req, 2)
at_most_of(2, C_RecvReq, 1)
at_most_of(2, C_Send, 1)
at_most_of(0, C_Recv, 1) 
at_most_of(1, S0, 1)
at_most_of(2, S_Req, 2)
at_most_of(0, S_RecvReq, 1)
at_most_of(0, S_Send, 1)
at_most_of(0, S_Recv, 1)

lemma C_Send_RecvReq[reuse, use_induction]:
  "All tid #i. C_Send(tid)@i ==> Ex #j. C_RecvReq(tid)@j & #j < #i"

lemma StartFirst[reuse, use_induction]:
  "All tid actor peer role #i #j. Start(tid, actor, peer, role)@i & Instance(tid, actor, peer, role)@j ==> #i < #j"


lemma_exists_state(C_Send)
lemma_exists_state(S_Send)
lemma_exists_state(C_Recv)
lemma_exists_state(S_Recv)

lemma_can_loop_state(S_Send)
lemma_can_loop_state(C_Send)
lemma_can_loop_state(S_Recv)
lemma_can_loop_state(C_Recv)

end
