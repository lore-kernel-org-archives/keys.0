Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38733CD8B5
	for <keys@linux.kernel.org>; Thu,  6 Aug 2026 19:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786042992; cv=none; b=kGmbOHOa1Nf7HPrIXdAS+N5w5UqRguzTyMT2J27dI5TYYwEqtOzdbfPIIPKjYRPi97mDVF7E9v32HogAi1D4PusqFiGPz3QJeA90ug0NPrVozKDtx6g09itdlPcqbPcZKAsNZmXuG6CJuDN8BHBpuQrY0tYXjwwZfpipYfCbZOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786042992; c=relaxed/simple;
	bh=RB2iIzrdNAeuPgpIcDiJSuDUeoZ/DB/CDKpHql+6X4I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lwmG7AFywKWl46uIrGG5gmbLafzs5eLf4Hn7igzDd59joGsSCCTjwXcdHvfPGXyT6/Y4gwlifNsheEOgkpKLRmWWXoib6+5YJmVtJVt0j1IBMpecETvknRO56+IGJW5ztzXocF842V1Rmc6eQ63ciR0IdFSdIjHtgKMU461Oh2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGS+Kg6g; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGS+Kg6g"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B31B21F000E9;
	Thu,  6 Aug 2026 19:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786042991;
	bh=LeS8/JZ1yLiRU5BNcjQAuxvrMeNJI14Kn6bHo32kEWE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gGS+Kg6gTWl9I87mmqkjSglDmO82QEWu8fUIkZFAiELDDvun7S9qQ+NeU7xDN1YEa
	 bfRmQorP/lYIdTZ2S0J0eD9wpuC3hsk+B46MI/9UGZDIqId2hZRpQDyxho/0P2Zir5
	 ZyO6W8V/F/SOMJg9lqf5SLHuUUw6hwzmSirO939CLs+3U4ch7gXkPksXUNivec0gUK
	 bb1f9foQI1M8xHhuSCjv9YSPofsCPEos6HB/uY6Zfa2iUMzgx2/pLod6PIzMQ4PjpL
	 ayG2TEr0WnA42SOy9oVwCV/YpiJ/GIoL64i1hW5cuFYnk5hHE2bILxXquNngMIPL9H
	 lVVgPrRlJouOw==
Date: Thu, 6 Aug 2026 15:03:09 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Paul Walmsley <pjw@kernel.org>, keys@linux.kernel.org
Subject: Re: pjw@kernel.org
Message-ID: <20260806-whimsical-incredible-cow-e49da3@meerkat>
References: <872e7256-76f6-2f05-9119-d62e76863ef2@kernel.org>
 <anOamI5Kef1mB4Eh@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <anOamI5Kef1mB4Eh@monoceros>

On Wed, Aug 05, 2026 at 10:20:01PM +0200, Uwe Kleine-König wrote:
> > mQINBE6kKGkBEAC0K2MI4FZc+62hG7m3dDob38n3uxoAtz64PIvONq6af33cYFUM
> > HCRqJj437kLF1jE0kVRdFEZzWLrU2kerXA0syiN4o3eq9DYwZ4SMN8U3oS6l9ihw
> > [...]
> > R/pXlD4c0iplYVqdRIyW6BlS5mW+M0rOBgKfYFjbtAIbQ3GPAByDVuMIs+NcDXig
> > hEYhRipDqu6B9iBVKWayKiYZ
> > =7/CH
> > -----END PGP PUBLIC KEY BLOCK-----
> 
> I imported that key and it didn't introduce any changes. Is that
> expected?

Looks like we grabbed this from the keyservers last time I ran the update,
which is why you don't see any changes.

-K

