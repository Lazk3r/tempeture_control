counter_inst : counter PORT MAP (
		aclr	 => aclr_sig,
		clock	 => clock_sig,
		updown	 => updown_sig,
		q	 => q_sig
	);
