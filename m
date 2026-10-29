Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793244904;
	b=V+cXlg9WjzFCWiGPlgoUQBYgNLZO2XaQFjjDmr+4LDiygNjNiRZfO7vfaMIJpkhMsldA
	 klgzDLyPIAN92qdkJcoa6DK+h8NzHF3Ts82X12MuQij2AlhQhyzbnR2X0UO/hA/OxQpak
	 qc0rxbHkJhw6ofZbLc/YNefEbplVce7nTpWqqTIQqj6KHV9SXFWWk/IgIZ6lX2/hR/U9l
	 sZJA6rj8cETeBdxodJH/GcgFmP+9JgXS3usbvS5VChtUoRfblHoC9V/8aWoEmqfOz5UnM
	 mwb5UEGWp9bGBl9TP66UYodES04te0T7DfQBZNUj9GW1kEuj6yG2p3JuAl+CotDjcFA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793244904;
	h=Received:Delivered-To:Received:DKIM-Signature:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=qrbDu21r7Q0dgOMNammUfBazoKOHbqcGCfduQxyfY30=;
	b=xx+pJaVD1Ec2JJqNBRsWUdep47QMowqDUF0IQb4gnyZsUc7XjSiBdjtLD6syDS+U5AE6
	 zmwKShRxlg003Kz498X9ts/xH0yc/u9JumIp16Np8oKLAZExsh/EHawpglcqy5Ld3JjCT
	 dIC3tfwNDzjE/z43BFbYqoQiWO368g/qDxTWpk7+CkSxBOKaSPT2NLQOUhuSaRbWc7YXG
	 f5EWtSuIPyF5VX/epBR76rHidT75iZ6g7s2FFU57aL2RZOGluv+hSWpxWfz3ajYu52wTH
	 a6mV8fKq3/QI/1u6NWcZS3CQ84v9j9YVmjFwxiT2UTxs5Dp/Y9FtP0olDUKskF6u+GQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=K0+QGkQI;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A016C606A31F
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 03:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=K0+QGkQI
Received: by smtp.kernel.org (Postfix)
	id 371541F031E0; Thu, 29 Oct 2026 03:35:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0A131F01825;
	Thu, 29 Oct 2026 03:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793244904;
	bh=qrbDu21r7Q0dgOMNammUfBazoKOHbqcGCfduQxyfY30=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=K0+QGkQIznTPEvpAdIcUjrOdOBJa3fo2B2seKusbwYgg+SJ9GPFTYa/4ejTBRCHij
	 QIut7WVh1nFT9sRDW64OVWmEfCje55TPn6q2N84ftAoxoTcVe4oI8QefvYGXFx7goK
	 6P81aHOpsKF4uTUJdtxClJe4HqsP5UvLeJ8fxyoBbRL0LzxhFwSuZn6B/OX5P6jVm/
	 2rPrCoILpORS3OIFgEDzVyheslAd9qDlPCHdjj/L9PHwz16Opp7JUAt3Z+h3/73CT6
	 SmzIfCvyBiDgKyAUMb4EwQc4wahjQGgpfhJXsCa+GgQXsMECQfp+Wpfva7b+OhsIwh
	 pBR9R48U2InnQ==
Date: Wed, 28 Oct 2026 23:35:03 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: SJ Park <sj@kernel.org>
Cc: keys@kernel.org
Subject: Re: Updated GPG key for sj (was: "Re: Your kernel.org PGP key has
 conflicting expiration dates")
Message-ID: <20261028-ara-of-historical-tempering-bd9ebc@lemur>
References: <20261028-industrious-sage-piculet-0b2a35@lemur>
 <20261029032052.174414-1-sj@kernel.org>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20261029032052.174414-1-sj@kernel.org>

On Wed, Oct 28, 2026 at 08:20:51PM -0700, SJ Park wrote:
> On Wed, 28 Oct 2026 22:45:54 -0400 Konstantin Ryabitsev <mricon@kernel.org> wrote:
> 
> > On Wed, Oct 28, 2026 at 04:57:46PM -0700, SJ Park wrote:
> > > Attching the updated key below.  Note that I use "SJ Park" as my name for kernel
> > > development now, so modified your above command to use that.
> > > 
> > > Please let me know if I did anything wrong.
> > 
> > Looks good, but... while I have you! Could you please run this script to
> > strengthen all the signatures on the keys you've signed in the past?
> > 
> >     https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/scripts/resign-modern-hash.py
> > 
> > The instructions are in the header. That should help improve the web of trust
> > in the keyring.
> 
> Thank you for sharing this!  I ran the script, and seems no action is needed
> from my side.

Oh, my bad! Looking at the keyring, I think it's actually David Woodhouse who
needs to run this script, not you. But it doesn't hurt that you ran it and
confirmed that you're all set.

Thanks!

-K
