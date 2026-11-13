Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794576176;
	b=I0SkxZuS+FZC4SQOMxqjwHrMNLlch5IjVaHH4a8tcD5cmIY7YgEtDS3DKneNCsbLAbdC
	 ha9KOCLr9GfupZNjrGqjs1ssV3TBOzOgxxDtd9nFGRgHh8orbjQG4t3rzogI8v7/oMWRA
	 WdndLk/R1nW6cvs3mhVacgib6WHkDYcRkmbd1zvMSzdLJWeXd0cqNmVNA+lHujgnd7JHK
	 4/EPaYSGBe6luyivaa3dn2rWLj3qZ1oOHd4+pUbbREq6TpNDVnLHNxZlmwj1SnZ9q/lUY
	 4HMGbKPA8mhzqfMq4UA54EyfS5BI1XuABXFZ0tANu24ZbR0oHgAH2lHEXVr+ntLzw5w==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794576176;
	h=Received:Delivered-To:Received:DKIM-Signature:Date:From:To:Cc:
	 Subject:Message-ID:MIME-Version:Content-Type:Content-Disposition;
	bh=4OwWyUB6r5Wm3BRKrQV6sOv0VwrYQhrRDuo1pUhubqQ=;
	b=gkRT2jVUWYdsNz1RyIZkePQU7SMrmczU4nNf+T1XiSruFNdMPP12mIqD0rT53NBduAxa
	 7uUDDY4veJuV6P9o8E+T3Fk2CJ6KvZ0pQpTYSPiK9CE0wIbILiSVBRKIH4vlI38GNB6aT
	 xIhhFaGOVnesYh5NGUO5tmtY2P+cFWy0O+GLTGfn44s0qxYgNxQkYIc2b83sTqasLAy6+
	 uV/gFxl3bA9INz+olC61fBySwGVtc5DWZRfQbdHiwmXty4+P9GyxkDOrjwLufyXre69de
	 8+CbDBTM0wiKNaX5xaLtW8tykjNY98iDXzbTOdxAXJgEIoG+nTMWSX09lnk1hGdZb4A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=CVM0zVlj;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A707606BC37
	for <keys@linux.kernel.org>; Fri, 13 Nov 2026 13:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=CVM0zVlj
Received: by smtp.kernel.org (Postfix)
	id 079611F000CF; Fri, 13 Nov 2026 13:22:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67E871F000CC;
	Fri, 13 Nov 2026 13:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794576175;
	bh=4OwWyUB6r5Wm3BRKrQV6sOv0VwrYQhrRDuo1pUhubqQ=;
	h=Date:From:To:Cc:Subject;
	b=CVM0zVljEIUaLE5BUttUk7/LCJDC3G4/LT8vxjugijRWnxPjruGqf+4/47XtBG7Es
	 zG+xR1fjdSzquY1opsJJndjUwfwVidUPKqAGZCBuzEILInmRFoydaMV6u4PgtBu/MG
	 HINTiFlETZDqFhUdXOlrXB/PCGBpWKVWDCZDlk4VhE2TMUYYcSVJD8JKvap6fTeuDI
	 /QVj2NQS6GRwuHGK+G/9TGYUZHoX6Z8C2h4iQPxlzEcYaB/MUnf0NyeSCuldgvNgUn
	 8UCs2eEsRB8V3IfbQFAuCTu1pC/ZEbRUQoS2F+Ybs+YEzoCwSsm0vx5pkIOFhtTmP1
	 4kdBh6iKnFcAg==
Date: Fri, 13 Nov 2026 10:22:52 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: keys@kernel.org
Cc: Juri Lelli <juri.lelli@redhat.com>
Subject: New key
Message-ID: <avcPLMVwvkWUEpJe@phoenix2>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vXsK0Tf7Y8gOxpBU"
Content-Disposition: inline

--vXsK0Tf7Y8gOxpBU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

	Here is my new key, with an expiry date, signed by my previous
one and by Juri Lelli.

- Arnaldo

--vXsK0Tf7Y8gOxpBU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename=9455D1B5E941CD7D1BFC5E4643B49DC774163570.asc

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=3QKl
-----END PGP PUBLIC KEY BLOCK-----

--vXsK0Tf7Y8gOxpBU--
