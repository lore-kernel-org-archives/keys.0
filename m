Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BE436654D
	for <keys@linux.kernel.org>; Mon,  2 Feb 2026 13:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770040613; cv=none; b=pRwKuCtkSLu//EQFYNnsQ/Og7hu35hCua+Z7TJSCp3yIiRpYSrCQYyi3Wf3OTC6ldB3oTaDXsJl9SzI3i9h3/x4uaII5JGpieR8WrvxZUBlBLCxM3/W4NMdqiqy0RAfifZURm9K9WV71PcSgY9f0JoZnQchPMonnMCvY6ke5HqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770040613; c=relaxed/simple;
	bh=G1Bvpdz5sHWcAIli/WN/NUJgQBAIe9PZn/xKCEVW5LU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OJsTXD9pd6Dj/MojMKKdT7HuUsv2qgQcJ5x/xfv/CZZWOIZ8BJ15AOVYEYmTp99k5WfbJ4D5uG1Pu70FwszJ0ZQGr4soK0xFitHmEDdQqa/V8kQSYxSLOzb+EyziXsjwqcoLD094+2KUisyA9//YO6yZ6D8SGWGl0IUZrH6G2wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=YExEiRmm; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="YExEiRmm"
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-43246af170aso2817004f8f.0
        for <keys@linux.kernel.org>; Mon, 02 Feb 2026 05:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1770040611; x=1770645411; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=G1Bvpdz5sHWcAIli/WN/NUJgQBAIe9PZn/xKCEVW5LU=;
        b=YExEiRmmpXyUHVw1uQxC2SFH+RK4FtpLcOFopg8Qp5qQNqUKkcNGx4vFbquy8M+yV0
         jYqRLwRtY6hjegK0WWFOulfKSQUA6Gg9MIxRGd1MhLbKpHrAdg0Wnh9oeQF/DVlvsvSb
         s+qU+R+FEiHIKtfERj8vKoRyWshVLll9Hk3uC8yHcPXzxUaU3JM0A6wQ40VbXAYdxoxS
         vQDgkMoZkft6ed4QHMo4kYlS4YKxyaQdB1GGtJLnUE6cCcnZMknoDf8mLAPTHA0LvWO/
         S6pae0d8vN6LspfyhAsKeSB48gJV5ZFbhi1EI4YjC6TEjVZL5gaqtdeiK5bKkkpFKBEl
         b0tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770040611; x=1770645411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G1Bvpdz5sHWcAIli/WN/NUJgQBAIe9PZn/xKCEVW5LU=;
        b=IobCWQyVEDC7J9pcffRVvRNh3hZa4LSeeHSLPnlRf2z4b499ifUQF45nxuWbN7kM+S
         yRBZ1E6/748nEZvq/d6t/BVBhuSE4Tkv2IU+Np9fi07cktIVB1ZvuMyEjP8MDRTaVx7f
         eVUp1aSf1G5CbOAISSP1BX7UPp3YDfQIhZecptbLWenILeCpeqHrfP9+tScGjubusqwq
         cWcJMzo6yiMH0RSbbjWk/WRNYJxBVhgruO8X0NwuUSOwNP6wk2kHbkFIv9Zxnt+yoakd
         Wpao+xpJIOq2rYYxaOvOiMX77KiBROSE7paMQ/eQXcLgrdMudCM1H9rYnbs+C90lXY3v
         ta/Q==
X-Gm-Message-State: AOJu0YzdBfvdY62U2OqUDL2oMCizzh9tRVguKHsSPq5PhNQtrOSRFArw
	RZc0QeQhhdvI7n0kAJWDSlLTLZXO6nEHk4qZpqFp3ohklfPO68v76XEU73rmYXyBy2z8O1Fvcfw
	5xUWP
X-Gm-Gg: AZuq6aJZpimry2KhJScOcIYtmgQXyrWFDN/AMQPFl6kyebTFsSCj0mQac1Wqu6ivSyc
	qyN8kZUVVrzZQjvzdXMh/gcPVA5x2qLg/ONGgvdIsmTQ0891sVZFE2Dv+bqfxjQFiBMFigeqFXU
	9xt8Ivi2UXsDgW7lKLFE4J0RVaWn8zCisOqGm5nAvNJwKExyDgH79cJcWW6mcT87uo/zifGqZAD
	2ytumEusFGNiPjULDkvbSnaA+OJLJlnd4UWgTeiZTn8tkQDCX4/u7PdCGvd1ITQbVQ5gm5G4w1x
	zuh5Dqc/ZcDXMWC4IH4dqhxv4TwycZIwly7so/u5sYWtA25SySLdqG8jH8hAr8Nke+qhe++keME
	y5pkZYAe+WPzGTqJxdRJRB1KU0o+DlrBNTAYFIab7AM7xbaMvODW2HN4ZXryYSfTeBYl97/qLJ1
	7hlEFm1uqkniLpiq0kQI+QLR5wo0jIJzM=
X-Received: by 2002:a05:6000:2384:b0:430:fd0e:a502 with SMTP id ffacd0b85a97d-435ea2102b6mr21417644f8f.22.1770040610676;
        Mon, 02 Feb 2026 05:56:50 -0800 (PST)
Received: from blackdock.suse.cz (nat2.prg.suse.com. [195.250.132.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1048a54sm43045551f8f.0.2026.02.02.05.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 05:56:50 -0800 (PST)
Date: Mon, 2 Feb 2026 14:56:48 +0100
From: Michal =?utf-8?Q?Koutn=C3=BD?= <mkoutny@suse.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: [PATCH] Drop expired subkey from description of =?utf-8?Q?CFD?=
 =?utf-8?Q?ED9A2FD1314F0_=28Michal_Koutn=C3=BD=29?=
Message-ID: <mysghdc25srhtfixbiflsqbzcsuc2oi3fd7bxpta43ws3qtd33@ckxfdcfh45ht>
References: <20260129094802.947558-2-u.kleine-koenig@baylibre.com>
 <7y444mpcfx6deml6p24h3euzdh4lodpcbmcg4asmf572dxubgs@q5v2qvltejdo>
 <6vhuotebu2oaotdnzt2xnybdks6ssyh77zmbi7hnmb3v2yf65k@gezaaxe5svoc>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i7nwr3hyz5z6mmrt"
Content-Disposition: inline
In-Reply-To: <6vhuotebu2oaotdnzt2xnybdks6ssyh77zmbi7hnmb3v2yf65k@gezaaxe5svoc>


--i7nwr3hyz5z6mmrt
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Drop expired subkey from description of =?utf-8?Q?CFD?=
 =?utf-8?Q?ED9A2FD1314F0_=28Michal_Koutn=C3=BD=29?=
MIME-Version: 1.0

On Sat, Jan 31, 2026 at 12:14:03AM +0100, Uwe Kleine-K=F6nig <u.kleine-koen=
ig@baylibre.com> wrote:
> If you upload your key to keys.openpgp.org or keyserver.ubuntu.com it
> should get updated automatically by Konstantin's periodic syncs.

Ah, keyservers, they were displaced from my mind.
I've uploaded the (fresh) key to keys.openpgp.org.
The automation takes over now, correct? [1]


Thanks,
Michal

[1] Assuming I keep the key fresh on that server from now on.

--i7nwr3hyz5z6mmrt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJEEABYKADkWIQRCE24Fn/AcRjnLivR+PQLnlNv4CAUCaYCtHBsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIACgkQfj0C55Tb+AjgWQEAzgLBW7E9YiUtaqBXiO7c
xd6eSy7R6/vijJGeHBBJEKgA/AiZheazpKmgNbKt1yy5gL7v/m9mDHaou17LhUZ2
z9oO
=/TKb
-----END PGP SIGNATURE-----

--i7nwr3hyz5z6mmrt--
