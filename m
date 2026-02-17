Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18783EBF2F
	for <keys@linux.kernel.org>; Tue, 17 Feb 2026 00:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771289371; cv=none; b=d5B4aeogUKAOwPjq5EPx0pY3zs37w4rHqqY/f0OxQ7Dx+0d5U2pnjUAXWLpN4Wvy5YHFciM/zNS4h9iA+ZKe2KZP8UxvEzxF+f2l2HjkoPm+sB/ku3rtj/XiCGFJugvm1XffLuu4/R9PdEq52aGlV8jGjv1cZJtTFubsL+ahIQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771289371; c=relaxed/simple;
	bh=jH93TwgQPeoLzKufhU8z25dfdISRTWMNEA6QwcyOSIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j3xX56Q+g4nn74hJHywFUnTqd0alOghZ7MYbVKINm15qshmEN3ruMdNHWqCZdkR133YEQgxH4JFh3+UENWDbrI06GaOJxRB1zl5Unh1xBqJ2EDkWh6XdAQ4o6eT5fEVWDNW7qzUxBaYfxTbJwLViDhoQp1Z6qP2VS8tsnWPSbck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRmhrPme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRmhrPme"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 638A5C116C6;
	Tue, 17 Feb 2026 00:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771289371;
	bh=jH93TwgQPeoLzKufhU8z25dfdISRTWMNEA6QwcyOSIE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YRmhrPme24BKvmcZFv2NlV3vqfgcc3rr1Fh2sLBJh9gyGepBdHRrMMMiC03ltsrIv
	 Xbs0pEF0K3hU+wjWs+t3YgFd9Xr7R60ee8ZtEEWRntbYPdsfexyD5oIr5nZQtjFeM1
	 cXZC5bM5UmycflLDMOHackgWIgs9WnVC52WIXiAiy2KtrblcI4qUQoet/HG+i5NhG+
	 BCNqX8JndztdWLNNpqeSHUG7xhVyf2A8gzx8hq6scpReXifkifMfIcmL9lnAiNLQIn
	 75DqvI0No7AfCBCXaUsBVFbw9py+sWhq/pubIk8ScJyn6iBRMp+Gn28+rgLZKjOmCp
	 iT1s0bneD2o1A==
Date: Mon, 16 Feb 2026 18:49:30 -0600
From: Seth Forshee <sforshee@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	keys@linux.kernel.org
Subject: Re: key AB4800A62DB9F73A (Seth Forshee) expired
Message-ID: <aZO7Gga9RCRIidFg@ubuntu-x1>
References: <6vz6qlpdzoueoigolgs2x6i6mpg6wpa3hos34feiu6n4bnvc5d@syix5qqdbmn6>
 <aYIQdlikYqHwps3I@do-x1carbon>
 <20260213-magic-rare-termite-bb1cb4@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260213-magic-rare-termite-bb1cb4@lemur>

On Fri, Feb 13, 2026 at 04:38:06PM -0500, Konstantin Ryabitsev wrote:
> On Tue, Feb 03, 2026 at 09:12:54AM -0600, Seth Forshee wrote:
> > > this is a quick FYI that your PGP certificate AB4800A62DB9F73A in the
> > > version that is tracked in
> > > https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/tree/keys/AB4800A62DB9F73A.asc
> > > expired earlier this month.
> > > 
> > > If you don't use this key for kernel work any more, please let us know.
> > > Otherwise I suggest to expand the key's expiry date by doing e.g.:
> > > 
> > > 	gpg --quick-set-expire 2ABCA7498D83E1D32D51D3B5AB4800A62DB9F73A 2y
> > > 	gpg --keyserver hkps://keys.openpgp.org/ --send-key 2ABCA7498D83E1D32D51D3B5AB4800A62DB9F73A
> > > 
> > > to extend the expiry by 2 years.
> > 
> > Ah, I guess I forgot to put a reminder on my calendar. I'll get it
> > updated. Thanks for the heads up!
> 
> Hello!
> 
> Note that it's still expired. 

Yes, my apologies. Updated now.

Thanks!
Seth
