Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE409463
	for <keys@linux.kernel.org>; Wed, 10 Sep 2025 13:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757510177; cv=none; b=CnbaBeZMfqx7jdP9MEt4kYzdXOIQ9KXclx0dXkXLiEcfFoZ6d+QWW6VR3sJIQueo+vZCJdsHG8kM8zGUiEozVL0URQxPeSgNLUZe112mMw7n/D+xRhWKUuy+A60V/pl2Iri2t1DRGvlUbOtbL4Uga65mmoBTQR+yqxktbfXyWPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757510177; c=relaxed/simple;
	bh=rf22Qh88kcC/7ZZCq48C6cGqLKLSPMKz8LUrTfHlfVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cxc04Wynn+wEFWT3nTBRL7Vfa6YGGYCpGDwsLzaPY0gs4HvY9BU9EHLUjlUpxbfnQ8/WXOTZqf8vtVGaAOHUjbOWvBHOzEsEj76TXVGL701WwVGrlAEIvepN4L2e68jNISVLkt5Mc4kU54nhdav8ZkdxwNDXnRipu59methGRa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=pM4IXgeC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="pM4IXgeC"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FB3FC4CEF0;
	Wed, 10 Sep 2025 13:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1757510175;
	bh=rf22Qh88kcC/7ZZCq48C6cGqLKLSPMKz8LUrTfHlfVM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pM4IXgeCH+S+mxi2oY7CoSJY3am3XywZzxLDm+Ww0VHjw5hDFTKXJoZqBJkNLdGWa
	 3VYr/U/BU+ce1zYq3qz+O3KT1vq5eA/6jl5t02jb1l/E2xsjGqU7OLW3oy7FYNbygb
	 BYdy3Dt3dMXE5LalwDT35jiksrCQXvdeXkuNyEic=
Date: Wed, 10 Sep 2025 09:16:14 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Willy Tarreau <w@1wt.eu>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	keys@linux.kernel.org
Subject: Re: SHA1 bindings in your PGP key 4E386D9C9C61702F
Message-ID: <20250910-finicky-famous-wolverine-ee51dd@lemur>
References: <isa35mrnkbzbirunf55qmy2bmxj4jfbcado5o4xi655oa6tawa@azwkdgaggj2g>
 <20250910064058.GB30457@1wt.eu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250910064058.GB30457@1wt.eu>

On Wed, Sep 10, 2025 at 08:40:58AM +0200, Willy Tarreau wrote:
> > The issue is that the proofs about your UID and your subkey
> > 014180C7E8419672 belonging to your main key 4E386D9C9C61702F rely on
> > SHA-1 hashes which is considered weak since at least 2005[1]. Practical
> > breakage is not known yet, but still I recommend to update your key to a
> > safer hash algorithm to reduce attacking surface.
> 
> Hmmm unless I'm missing something, these serve to sign tags designating
> a commit that itself relies on SHA-1, no ? So in this case if we don't
> trust the keys anymore because we consider them weak, we shouldn't trust
> the tags nor the commits either ?

Well, there is collision detection code in git to prevent a lot of badness
associated with that attack, and nothing like that in PGP (not sure that's
even possible). So, I wouldn't treat these two problems as the same.

> > Find more details at
> > https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3motyyoo3@7vf7ip6gxyvx/T/#u
> > which also describes a procedure to (hopefully) fix your key.
> 
> Thank you. I must admit I'm a bit lost by the complexity of these
> operations, especially since I don't understand their impact. Does
> this mean that my key that was previously signed will change if I
> do that, and that as such it will have to be signed again ? What
> should I backup before entering these operations in case things go
> wrong or if I simply do a mistake ? I never understand even the
> questions in GPG, so I tend to randomly respond until it works.

It should not impact your signatures in any way, it will just recreate the
certificate that pairs your identity to your primary key.

If you want to feed to birds with one scone, you can just add your kernel.org
identity to your key and then reset your 1wt.eu identity as primary:

    gpg --quick-add-uid 0C9568FA554656551590C5E44E386D9C9C61702F 'Willy Tarreau <wtarreau@kernel.org>'
    gpg --quick-set-primary-uid 0C9568FA554656551590C5E44E386D9C9C61702F 'Willy Tarreau <w@1wt.eu>'

This will make your key discoverable via the kernel.org WKD and fix the
problem with the SHA1 signature.

You then just need to send me the updated key export.

Hope that helps!

-K
