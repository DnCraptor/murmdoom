# Replace SLOT_RENDER members with SLOT_MEMBER macro
# Members IN render: eg_state, eg_rate_h, eg_rate_l, rks, eg_out, tll, output, mod_buffer, buffer, eg_shift, patch, fnum, efix_pg_phase_multiplier, blk, pg_phase, lfo_am_buffer, pm_mode, wave_table, wav_or_table
# Members NOT in render: number, type, __patch, pg_out, pg_keep, blk_fnum, update_requests

s/\bslot->eg_state\b/SLOT_MEMBER(slot, eg_state)/g
s/\bslot->eg_rate_h\b/SLOT_MEMBER(slot, eg_rate_h)/g
s/\bslot->eg_rate_l\b/SLOT_MEMBER(slot, eg_rate_l)/g
s/\bslot->eg_shift\b/SLOT_MEMBER(slot, eg_shift)/g
s/\bslot->eg_out\b/SLOT_MEMBER(slot, eg_out)/g
s/\bslot->tll\b/SLOT_MEMBER(slot, tll)/g
s/\bslot->rks\b/SLOT_MEMBER(slot, rks)/g
s/\bslot->patch\b/SLOT_MEMBER(slot, patch)/g
s/\bslot->output\b/SLOT_MEMBER(slot, output)/g
s/\bslot->buffer\b/SLOT_MEMBER(slot, buffer)/g
s/\bslot->mod_buffer\b/SLOT_MEMBER(slot, mod_buffer)/g
s/\bslot->fnum\b/SLOT_MEMBER(slot, fnum)/g
s/\bslot->blk\b/SLOT_MEMBER(slot, blk)/g
s/\bslot->pg_phase\b/SLOT_MEMBER(slot, pg_phase)/g
s/\bslot->efix_pg_phase_multiplier\b/SLOT_MEMBER(slot, efix_pg_phase_multiplier)/g
s/\bslot->pm_mode\b/SLOT_MEMBER(slot, pm_mode)/g
s/\bslot->wave_table\b/SLOT_MEMBER(slot, wave_table)/g
s/\bslot->wav_or_table\b/SLOT_MEMBER(slot, wav_or_table)/g
s/\bslot->lfo_am_buffer\b/SLOT_MEMBER(slot, lfo_am_buffer)/g

# Handle (slot+1)-> patterns
s/\b\(slot\+1\)->eg_out\b/SLOT_MEMBER((slot+1), eg_out)/g
s/\b\(slot\+1\)->eg_state\b/SLOT_MEMBER((slot+1), eg_state)/g
s/\b\(slot\+1\)->patch\b/SLOT_MEMBER((slot+1), patch)/g
