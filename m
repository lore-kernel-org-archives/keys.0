Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97F212580DF
	for <keys@linux.kernel.org>; Mon, 10 Feb 2025 16:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739204559; cv=none; b=qPoZFPUscJO+qpXBtVTOxPlvxdCCUQpwvr26R/t06W0sL4HzgXxL9iFZItn800vD6DdsLltZHwzzTqobLsSKLTs3XgvZ80bQKdKHYKRlasiZUVyWxU9lISFkj0uyocW4eHyf7yOx/lL2mVYr/jfpRgvM+Vuo5okGWbNqfCOQdPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739204559; c=relaxed/simple;
	bh=EHCeOFGylCOEn97weU6w4Q5kN3gYxbZ3a75o+qDWjtY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BXYpxQiyjeYsyd/VqWDdv99035r3Xt9zR1XaXP1tgoaEj8NJj0NQeByitGTJRsc+2j2lK4AUuX4eDnAL/Rp/Eh53/gtem0llJhLj4Wx45BwU/lTcIf0lfzlh908+x9XiSEhXGrOGJLttSZxmPzdkvBwdMzFmloDDBhR8F4wr7V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=KdEVMfUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="KdEVMfUx"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F0CAC4CEE5;
	Mon, 10 Feb 2025 16:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1739204559;
	bh=EHCeOFGylCOEn97weU6w4Q5kN3gYxbZ3a75o+qDWjtY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KdEVMfUxCHod5FeTusEDYQ1ws3pQD/BhNzjJtEJbuWC8ahM4BWcQQgFX1dyx/3SAP
	 FjsEJZaVCievDo4D5fnI1ZMY/4431d9Ypz52oHPtALkU0GnvAi8zD5jze2kwAdOp3J
	 MpetnydDHviaBC8eCOZJXwhGEWTlZR9TGWENsgbc=
Date: Mon, 10 Feb 2025 11:22:36 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, keys@linux.kernel.org
Subject: Re: Update AB5FEB886DBB99C2
Message-ID: <20250210-amiable-ruby-toucanet-5d8374@lemur>
References: <b526faf1-896b-49a8-8f28-531294066583@wanadoo.fr>
 <6lba6hiolq65coivbzg4znlc2wc7zmax4saleg3e7ndspsxigv@qhg5pg2ypygz>
 <3ie26bbhuzw657fibjyzt4w3tdo5eip6m6nr36b4egzn2lzadi@fv3a4ebsd4f3>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3ie26bbhuzw657fibjyzt4w3tdo5eip6m6nr36b4egzn2lzadi@fv3a4ebsd4f3>

On Mon, Feb 10, 2025 at 01:43:41PM +0100, Uwe Kleine-König wrote:
> > > So let me ask: what type of data are actually synchronized? Is it only
> > > the sub-keys and the expiration dates? Or is there a way to upload the
> > > cross signatures somewhere to have them automatically synchronized in
> > > kernel/pgpkeys.git during the periodic updates?
> > 
> > The keyservers can really only be relied for publishing things like:
> > 
> > - new subkeys
> > - new uids
> > - updated expiry dates
> > 
> > For third-party signature data it's best to send an export to this list.
> 
> Note that keyserver.ubuntu.com still provides 3rd-Party signatures, just
> gpg doesn't import them by default.
> 
> If you really want all that stuff, use:
> 
> 	gpg --refresh --keyserver-options no-self-sigs-only --keyserver keyserver.ubuntu.com

Thank you for the hint! I didn't know that was needed.

However, we'll still probably only use keyservers for key updates, since if a
key is in our keyring, that means we already have sufficient signatures and we
just want updates to things like uids, subkeys and expiration dates.

-K
