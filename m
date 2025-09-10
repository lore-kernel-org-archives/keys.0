Received: from mta1.formilux.org (mta1.formilux.org [51.159.59.229])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8D51F03F3
	for <keys@linux.kernel.org>; Wed, 10 Sep 2025 13:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.159.59.229
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757510591; cv=none; b=dfxjHpwNXTGDt2I+4CQjfkIzY7GA43Fy7zJwcC8LEfZJHiKoEQrcZD5tDHSSFC9d4+SQUThXJjaFkNeBhYNhVG0snSjRNoj5nuFYeDh+2eCtclApiDbzuLkL0BoqeRFaSYr7zlABtTaE+9Yw1ZYOAZs5WsCt5JpnvPVdMr2Ahgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757510591; c=relaxed/simple;
	bh=gmETkp6gvlFYIW/wwcHbeNbtTnB6i8glHf1xDt7RWsw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lfQlQ0FAqrriMZP/i6/uX7ZLyCMKHr6BOn9d55/4labBb6El6QzQgQOKmwwYVzj59LZq/xoJQD4oE8ZGqCYa3bErQLZtS0tzi3/1/79X0P8vx/e24EEKKqBYcKVl86tYNewK+554/km0oSacueYakAkBwdSw2A8wvHCFX8+wbwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=1wt.eu; spf=pass smtp.mailfrom=1wt.eu; dkim=pass (1024-bit key) header.d=1wt.eu header.i=@1wt.eu header.b=RyZx5IBX; arc=none smtp.client-ip=51.159.59.229
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=1wt.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=1wt.eu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=1wt.eu header.i=@1wt.eu header.b="RyZx5IBX"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=1wt.eu; s=mail;
	t=1757510585; bh=gmETkp6gvlFYIW/wwcHbeNbtTnB6i8glHf1xDt7RWsw=;
	h=From:Message-ID:From;
	b=RyZx5IBXu0GR7ZIc4DbLg3k60zcTkHNWd5yyK3fzJmX38T44D2EcmeFac6z/3pZoX
	 FKTb0yRzohJ7axVt/CzVBlooKdNWt8prTOLUniFDWEhLq2auuQSuyQlpeeOXOR3j0E
	 rCIr9TgPaWQsGU8STr0dDDITDNKA3kwTLgQ/3d10=
Received: from 1wt.eu (ded1.1wt.eu [163.172.96.212])
	by mta1.formilux.org (Postfix) with ESMTP id 4078AC0699;
	Wed, 10 Sep 2025 15:23:05 +0200 (CEST)
Received: (from willy@localhost)
	by pcw.home.local (8.15.2/8.15.2/Submit) id 58ADN4wO031001;
	Wed, 10 Sep 2025 15:23:04 +0200
Date: Wed, 10 Sep 2025 15:23:04 +0200
From: Willy Tarreau <w@1wt.eu>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
        keys@linux.kernel.org
Subject: Re: SHA1 bindings in your PGP key 4E386D9C9C61702F
Message-ID: <20250910132304.GC30861@1wt.eu>
References: <isa35mrnkbzbirunf55qmy2bmxj4jfbcado5o4xi655oa6tawa@azwkdgaggj2g>
 <20250910064058.GB30457@1wt.eu>
 <20250910-finicky-famous-wolverine-ee51dd@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250910-finicky-famous-wolverine-ee51dd@lemur>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Konstantin!

On Wed, Sep 10, 2025 at 09:16:14AM -0400, Konstantin Ryabitsev wrote:
> On Wed, Sep 10, 2025 at 08:40:58AM +0200, Willy Tarreau wrote:
> > > The issue is that the proofs about your UID and your subkey
> > > 014180C7E8419672 belonging to your main key 4E386D9C9C61702F rely on
> > > SHA-1 hashes which is considered weak since at least 2005[1]. Practical
> > > breakage is not known yet, but still I recommend to update your key to a
> > > safer hash algorithm to reduce attacking surface.
> > 
> > Hmmm unless I'm missing something, these serve to sign tags designating
> > a commit that itself relies on SHA-1, no ? So in this case if we don't
> > trust the keys anymore because we consider them weak, we shouldn't trust
> > the tags nor the commits either ?
> 
> Well, there is collision detection code in git to prevent a lot of badness
> associated with that attack, and nothing like that in PGP (not sure that's
> even possible). So, I wouldn't treat these two problems as the same.

OK good to know, thank you!

> > > Find more details at
> > > https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3motyyoo3@7vf7ip6gxyvx/T/#u
> > > which also describes a procedure to (hopefully) fix your key.
> > 
> > Thank you. I must admit I'm a bit lost by the complexity of these
> > operations, especially since I don't understand their impact. Does
> > this mean that my key that was previously signed will change if I
> > do that, and that as such it will have to be signed again ? What
> > should I backup before entering these operations in case things go
> > wrong or if I simply do a mistake ? I never understand even the
> > questions in GPG, so I tend to randomly respond until it works.
> 
> It should not impact your signatures in any way, it will just recreate the
> certificate that pairs your identity to your primary key.
> 
> If you want to feed to birds with one scone, you can just add your kernel.org
> identity to your key and then reset your 1wt.eu identity as primary:
> 
>     gpg --quick-add-uid 0C9568FA554656551590C5E44E386D9C9C61702F 'Willy Tarreau <wtarreau@kernel.org>'
>     gpg --quick-set-primary-uid 0C9568FA554656551590C5E44E386D9C9C61702F 'Willy Tarreau <w@1wt.eu>'

But then it creates a new identity ? If so, that's precisely what I'm
trying to avoid. I'm not using my kernel.org e-mail address, and am using
my current GPG key to sign other projects. That's why I'm overly cautious,
given breakage in this area is usually invisible only for the one doing it,
but quite visible for everyone else.

I'll try to run through Uwe's link and see how far that goes without error
(since gpg loves to change options in every version).

Thanks!
Willy
