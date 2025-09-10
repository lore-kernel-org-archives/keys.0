Received: from mta1.formilux.org (mta1.formilux.org [51.159.59.229])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B3D306D3E
	for <keys@linux.kernel.org>; Wed, 10 Sep 2025 06:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.159.59.229
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757486801; cv=none; b=kWyuPcUnKWMOxZ0YIaifAwAMwTYQy8qxkSGnQz0kMxfsZ8rr3N3xP8Po/aW7fkzPw3LFaqh+cYydBEUZ3JjgSpz2PjjSTrJOvnZHzU4Hp1athx9u42U+v/G7VNJpc0b4QbtdDWqsHkIts7thYNSU9jotDOU8iPz07wTvhQDsBFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757486801; c=relaxed/simple;
	bh=bFtk55uGsNT/PMjKTSrDtLoPJM86gmKyYJM/8ymXCpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B2/NWTq0Cc7gX9ieFJkQL4Raq2CZ3Ji4EKKziQ8ITg0m/UFKCoj65jJwvfPWg7Lh7tVmEPazT54RJS8Ew624se4JgBE85zid4iaRzr3SGQW//7cGmpNrgMvXT8ttOGxuROhKF3TL8SsXNG0UOhovxiUh1lcd0IFwBdyJQFrzS5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=1wt.eu; spf=pass smtp.mailfrom=1wt.eu; dkim=pass (1024-bit key) header.d=1wt.eu header.i=@1wt.eu header.b=ngtxOHIS; arc=none smtp.client-ip=51.159.59.229
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=1wt.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=1wt.eu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=1wt.eu header.i=@1wt.eu header.b="ngtxOHIS"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=1wt.eu; s=mail;
	t=1757486459; bh=bFtk55uGsNT/PMjKTSrDtLoPJM86gmKyYJM/8ymXCpw=;
	h=From:Message-ID:From;
	b=ngtxOHISq+nbk5IGGkLwizElRMLwMGRz5Krtgrm+MptWmzy8RLT6mV7kCnZAdEvTe
	 JBt+8qX1VlwTEAnBujLyS9NsIOK0tDmbnJfFxat0zh7t+aM1kUmXGcHiHAHBLGnl/n
	 1v8C/lPu1oNBZkskdEAg73Pa3GGdQc7FuzC3r2C4=
Received: from 1wt.eu (ded1.1wt.eu [163.172.96.212])
	by mta1.formilux.org (Postfix) with ESMTP id 20172C0699;
	Wed, 10 Sep 2025 08:40:59 +0200 (CEST)
Received: (from willy@localhost)
	by pcw.home.local (8.15.2/8.15.2/Submit) id 58A6ewZO030481;
	Wed, 10 Sep 2025 08:40:58 +0200
Date: Wed, 10 Sep 2025 08:40:58 +0200
From: Willy Tarreau <w@1wt.eu>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: SHA1 bindings in your PGP key 4E386D9C9C61702F
Message-ID: <20250910064058.GB30457@1wt.eu>
References: <isa35mrnkbzbirunf55qmy2bmxj4jfbcado5o4xi655oa6tawa@azwkdgaggj2g>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <isa35mrnkbzbirunf55qmy2bmxj4jfbcado5o4xi655oa6tawa@azwkdgaggj2g>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hello Uwe!

On Tue, Sep 09, 2025 at 12:03:20PM +0200, Uwe Kleine-König wrote:
> Hello Willy,
> 
> recently your PGP key 4E386D9C9C61702F was updated in the kernel PGP
> keyring after you expanded its validity
> (https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/commit/?id=e8a3192d295094087e09f623595c8309b2eac915). 
> 
> Taking this as a hint that you still care about the key:
> 
> This key suffers from SHA-1 bindings which are not considered on par with
> typical security recommendations today:
> 
> 	$ sq cert lint < keys/4E386D9C9C61702F.asc
> 	Certificate 4E386D9C9C61702F is not valid under the standard policy: No binding signature at time 2025-09-09T09:45:16Z
> 	Certificate 4E386D9C9C61702F contains a User ID (Willy Tarreau <w@1wt.eu>) protected by SHA-1
> 	Certificate 4E386D9C9C61702F, key 014180C7E8419672 uses a SHA-1-protected binding signature.
> 	Examined 1 certificate.
> 	  0 certificates are invalid and were not linted. (GOOD)
> 	  1 certificate was linted.
> 	  1 of the 1 certificates (100%) has at least one issue. (BAD)
> 	0 of the linted certificates were revoked.
> 	  0 of the 0 certificates has revocation certificates that are weaker than the certificate and should be recreated. (GOOD)
> 	0 of the linted certificates were expired.
> 	1 of the non-revoked linted certificate has at least one non-revoked User ID:
> 	  1 has at least one User ID protected by SHA-1. (BAD)
> 	  1 has all User IDs protected by SHA-1. (BAD)
> 	1 of the non-revoked linted certificates has at least one non-revoked, live subkey:
> 	  1 has at least one non-revoked, live subkey with a binding signature that uses SHA-1. (BAD)
> 	0 of the non-revoked linted certificates have at least one non-revoked, live, signing-capable subkey:
> 	  0 certificates have at least one non-revoked, live, signing-capable subkey with a strong binding signature, but a backsig that uses SHA-1. (GOOD)
> 
> 	  Error: 1 certificate have at least one issue
> 
> The issue is that the proofs about your UID and your subkey
> 014180C7E8419672 belonging to your main key 4E386D9C9C61702F rely on
> SHA-1 hashes which is considered weak since at least 2005[1]. Practical
> breakage is not known yet, but still I recommend to update your key to a
> safer hash algorithm to reduce attacking surface.

Hmmm unless I'm missing something, these serve to sign tags designating
a commit that itself relies on SHA-1, no ? So in this case if we don't
trust the keys anymore because we consider them weak, we shouldn't trust
the tags nor the commits either ?

> GnuPG doesn't create such bindings by default any more, but it also
> doesn't fix these when opportunities arise (e.g. when expanding key
> validity). Other implementations (e.g. Sequoia PGP) don't even accept
> these keys any more (while GnuPG continues to be happy about them).

OK that might be a good reason (even if some tools tend to deprecate
certain well-known and well working solutions sometimes for non-technical
reasons, I'm not judging if that's the case here or not).

> Find more details at
> https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3motyyoo3@7vf7ip6gxyvx/T/#u
> which also describes a procedure to (hopefully) fix your key.

Thank you. I must admit I'm a bit lost by the complexity of these
operations, especially since I don't understand their impact. Does
this mean that my key that was previously signed will change if I
do that, and that as such it will have to be signed again ? What
should I backup before entering these operations in case things go
wrong or if I simply do a mistake ? I never understand even the
questions in GPG, so I tend to randomly respond until it works.

I must admit that I'm not exactly GPG's best friend and it turns the
favor back to me, so the least I touch it the better I feel.

Thanks,
Willy
