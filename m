Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0292C5616AC
	for <keys@linux.kernel.org>; Fri, 16 Oct 2026 17:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792171196; cv=none; b=JW/kB37mKxTo0j58/66F6VDEjbxwiSdVBivQprWNvKFfTtX2uFeoA13OJNU+2qTrme+z0aCknm5NY1BTFHtUF95CRUytJVBuTe7uSskpgZgwzS2WgeD8Tko8rBeQiz9BteCsApUr39Bxq6por5nM1HxtJdX9wjwT6CX7nXS/LXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792171196; c=relaxed/simple;
	bh=gzGY1gafgD6S7/xQLAoqXrrfejYnTfbM+XMmiTNzv0Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hcawj9mig8/BuD1eJD4ys1jG37MmZHI6O8yAPYVv93RCoQ88JFgYzVMd54jWRsA9C9Ts0KMZ3hATk1ZFVI9XVDD6Le0nxhL/glO+5l2frzuJ+8uIPd0deSYHA9dRxbx1wJHSPddG82orpNLwAgIq03aUpkWYRlYqchElLSx8knw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Drl7dGvP; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Drl7dGvP"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C2AB1F000C5;
	Fri, 16 Oct 2026 17:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792171195;
	bh=gzGY1gafgD6S7/xQLAoqXrrfejYnTfbM+XMmiTNzv0Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Drl7dGvP1IKmcpH+7Q0xaD4O/9YuyBu+leQAoifrCMc0P/LpFQ9fffR8bviueW4iX
	 SYGMx2VYHkiilzpCEJPm9wWssE6S2+xdPMYeGuY86lpXSZ06i5lrrxXQ3TEFs/umQH
	 qk+sXqTjsum9SkdseIPFNi4UrUs1pltts0syM1kKD+Z05F02YTfkoTScMFPelmmG5i
	 NlKOWwgNpREe3EItfmc6UXq4AlYfogtoISGphSWYWBTarEEP0gzZmOn7/3VMolNeEW
	 0i/ZfKbsz539QdOYUArGI80Lmp8Dx2NU8DX9GrgEZlwO/1SB8hnWy2NBOPeUBUqf/l
	 Dp5Z0rAqj7Sng==
Date: Fri, 16 Oct 2026 13:19:54 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: "Luck, Tony" <tony.luck@intel.com>
Cc: keys@linux.kernel.org
Subject: Re: tony.luck@intel.com
Message-ID: <20261016-friendly-inscrutable-waxbill-896cf6@lemur>
References: <atJJYZ8MCLjdhiH4@agluck-desk3>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <atJJYZ8MCLjdhiH4@agluck-desk3>

On Fri, Oct 16, 2026 at 08:57:21AM -0700, Luck, Tony wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
