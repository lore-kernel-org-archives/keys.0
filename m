Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C19D18A6DB
	for <keys@linux.kernel.org>; Wed, 28 Jan 2026 13:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769607520; cv=none; b=BxlDNB1d+A1y5lUN2jZ+ex7uqKlFzRiaC4knfzHon/D2KYzZzIv8d9eCJqfW2/K7eB8LWWC5Zln5MndJ0r2LRNAD12B4QNPmo9ZS2U8UFz2DKIf+du+9JEJoOp3O/M0O0JhxB99fBPGYMIIHdrIlmHCib2CaiE0NbEKdK8x8UKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769607520; c=relaxed/simple;
	bh=V5V2Smd0l+j8IL9UaRpOm/1MQCngS0tzyiQI1ia8Q9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nstn7bVN+Vg3bwxJhzZd474FeLWMzPZVKPf796hDFxwyapPupG2Ql3nY+R7IW9bBr/MtWJ9OMue+WQ7B6tKVIYsn83Iz+Ng8lZHiSrQAdi5ykbPqTGM/gS0mr0qJ5vf2tgWignXGKIWz47Lafqskm9983F9ZyfSZEsg4imBuv+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0me5S1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0me5S1q"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 112FDC4CEF1;
	Wed, 28 Jan 2026 13:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769607520;
	bh=V5V2Smd0l+j8IL9UaRpOm/1MQCngS0tzyiQI1ia8Q9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q0me5S1qvgUCL328yHN8703f9MDzfo+c8J6tf/jUmXmVNwVqprqDUMu5EwV7B7ODc
	 ReDAbNUHJ2JGPpGrtRCC2B1J7w+ghVpfKuI0G7HIqSlYpqfB1IRNffpq9/8uhIMo2v
	 KERCGCpDLWHoAJFC6anM33iBSpRDDBWDdC+mL/Lxum4yG0b6WasKO747NEJUFlwnqM
	 QQZ5RSBNHkD0+D5iN4HdyojJ5A4svBe0lXYA58krWRCwzBFNbfvgjrke1a9HIXeQsz
	 fZ0mExwF/P2sKX/DlagXcsWjKRhu5TyxYflsXtFEiAu/dIs4812bNxAZx6FPY1TcRr
	 kvSCw76M3Nj/g==
Date: Wed, 28 Jan 2026 08:38:39 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	keys@linux.kernel.org
Subject: Re: Update of James Bottemley's key in the kernel PGP keyring
Message-ID: <20260128-debonair-kickass-junglefowl-833fdb@lemur>
References: <6gt2aiuqqgevlh5p4ggzahfhruciee4o57npoeadhqff7pqsp2@zsxiyjfetg4p>
 <702051e34bb06831594e4a438182335691563ef1.camel@HansenPartnership.com>
 <wurdvn6g5jno57ab4ek2yqkvum5hpw6apbmgz3gdegrz6ktyr6@pphqxlrxbtg6>
 <13517c3f2e61c898f22f8092df7da7930ee146b8.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <13517c3f2e61c898f22f8092df7da7930ee146b8.camel@HansenPartnership.com>

On Wed, Jan 28, 2026 at 08:30:31AM -0500, James Bottomley wrote:
> > Note however that for the model that is actually implemented it's
> > Linus' signatures that matter.
> 
> Actually, it's not just Linus.  We have about five trust anchors in the
> kernel.org keyring (also not reflected in the web of trust).

Yes and no -- all top anchors had direct signatures from Linus, so it actually
worked out nicely to trace everything to the topmost anchor.

> Well isn't that why this whole web of trust signature deprecation thing
> is wrong.  The question, as Linus put it in that email, is *not* does
> it work now, but did it work then.  And since we have the date of the
> signature we can know it was signed before sha1 was deemed compromised
> and thus can't be a forgery of Linus' indication of trust in me.  And
> since it's already embedded in a transparency log (git in this case)
> that date can be proven.

The hard part is tooling -- I'm all for everyone simply re-signing all of
their previous signatures that are done with sha1. In fact, in my view this
should be a mostly automated process, but it isn't and doing it manually is a
huge time sink. Happy to be proven wrong here.

-K
