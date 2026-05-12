Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B055C36C0C3
	for <keys@linux.kernel.org>; Tue, 12 May 2026 15:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778598104; cv=none; b=KDU0HWXk2azrKV0ZnI1KYkphWbAyzA/FAjfQ3IFx+KQzzazahgE1kYi1blZiB3ixhoLHNAh9fFGDHcyZOQVytblN0TVstRhM7O6PckPOtJrtIcmPlLhZCvRh/THx6wZOiBsbZVlM/VzifQl/i2j+u2ATnu95D0463G6guvbJ7Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778598104; c=relaxed/simple;
	bh=G3GVIdX52cT5tpwwWsUY+il3BOYT9BRVOb1xnQ5nZYs=;
	h=Date:To:Subject:MIME-Version:Content-Type:Message-Id:From; b=HsJ5Lx6nKXNCI8lj3LhJcoeqff1PXUPOsQPw3fbonaQ+DZIJRdcttJQdgH084rMWI9pZtsutg2O/xrIRLSxu68f9VZCz4nVIIUjdQpq+WxTySWVdbA624WWqL68g0ISgnyKARCXIkvR+kpFZfeqBqtICcc16h0m3qXwmlHCJYoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=AyD/chbW; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=mGFGMPUZ; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=AyD/chbW; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=mGFGMPUZ; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="AyD/chbW";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="mGFGMPUZ";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="AyD/chbW";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="mGFGMPUZ"
Received: from pobox.suse.cz (unknown [10.128.32.1])
	by smtp-out2.suse.de (Postfix) with ESMTP id 04AB675EC7
	for <keys@linux.kernel.org>; Tue, 12 May 2026 15:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1778598101; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=G3GVIdX52cT5tpwwWsUY+il3BOYT9BRVOb1xnQ5nZYs=;
	b=AyD/chbWmrNfbcIxMhB1RF8TbcKLzwuNXaCkmocfLynxVgEcqyH2AbWRQP/LO8Uhzy8ryh
	cv+OWQ50CzSMezJSKlR/4wKzs099g8tm75smr++rXEUI4sqel5RU7jmlSq2Q5+E8pptZEv
	PxNvLLsmK0x2Sc/Oyo1fBDJWM84zigI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1778598101;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=G3GVIdX52cT5tpwwWsUY+il3BOYT9BRVOb1xnQ5nZYs=;
	b=mGFGMPUZKYQKRJbRj52YpK/xdEImSLPcWmf6XchwQBXTZwToH7cyo8nS+vCBbEULM8kDMV
	QddnvR+z31mpSjDw==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1778598101; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=G3GVIdX52cT5tpwwWsUY+il3BOYT9BRVOb1xnQ5nZYs=;
	b=AyD/chbWmrNfbcIxMhB1RF8TbcKLzwuNXaCkmocfLynxVgEcqyH2AbWRQP/LO8Uhzy8ryh
	cv+OWQ50CzSMezJSKlR/4wKzs099g8tm75smr++rXEUI4sqel5RU7jmlSq2Q5+E8pptZEv
	PxNvLLsmK0x2Sc/Oyo1fBDJWM84zigI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1778598101;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=G3GVIdX52cT5tpwwWsUY+il3BOYT9BRVOb1xnQ5nZYs=;
	b=mGFGMPUZKYQKRJbRj52YpK/xdEImSLPcWmf6XchwQBXTZwToH7cyo8nS+vCBbEULM8kDMV
	QddnvR+z31mpSjDw==
Received: by pobox.suse.cz (Postfix, from userid 2387)
	id EF5B698044D; Tue, 12 May 2026 17:01:40 +0200 (CEST)
Date: Tue, 12 May 2026 17:01:40 +0200
To: keys@linux.kernel.org
Subject: resigned keys from FF98A38DA80834DA
User-Agent: Heirloom mailx 12.5 7/5/10
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-Id: <20260512150140.EF5B698044D@pobox.suse.cz>
From: mbenes@suse.cz (Miroslav Benes)
X-Spam-Flag: NO
X-Spam-Score: -1.20
X-Spamd-Result: default: False [-1.20 / 50.00];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-0.980];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FROM_NO_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCPT_COUNT_ONE(0.00)[1]
X-Spam-Level: 

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=0nRF
-----END PGP PUBLIC KEY BLOCK-----
