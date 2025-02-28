Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E8B277005
	for <keys@linux.kernel.org>; Fri, 28 Feb 2025 18:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740768713; cv=none; b=OjpEIS+67DdalcAjCNgVca1iX+8QA/38SreazdPv+C/GwnfJ1TiXL9/9SVxAsJsxg9LceP1D63QM4XCljVFp7yI9DytDNIO70dh8gFyv3wBBnFjbkPoMNYGC3vT7/Yw+kyyHF84N3SSiXF3SFiSoD0JqSP8UZJeym4ru69jJ0Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740768713; c=relaxed/simple;
	bh=n+yw1y27b+rom8NuD7mOKQmHEMNi36CSbZmMkYsd7LA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YwfmbIWkNtoP7RNq7dG102ZDCx3TgEUuu2gTuBlyZemzIo1MLeQnvNwi2NNi1oUpVn8yHPepyuN1Ok6V9vNYw31l+hkHXDmAWw2gsus8hx4yNCjKYU+g5z7zQwcKssNz7HcHE53fStjWC9ENDRFI0ZDUDr9t4neoBsSac73BS94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=2Vs9FOYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="2Vs9FOYE"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61B9EC4CEE2;
	Fri, 28 Feb 2025 18:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1740768712;
	bh=n+yw1y27b+rom8NuD7mOKQmHEMNi36CSbZmMkYsd7LA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2Vs9FOYEFEv9nOQvI4V9JqEaQi9Wg7lRxLlVy4t8rAUhRNUaVJ0mKqiCuW92Shni4
	 GxBoVqFK7bfBYnCvoJB3WiPudR29aeDHp9wtuOVPso/Jkwt3mdNn2gKMwKA1rpFJ5l
	 btc+ShQItlZ26rEQMyCAWE7KPJaTHZNWIsH63/kM=
Date: Fri, 28 Feb 2025 13:51:48 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update signature for Andi Shyti
Message-ID: <20250228-wild-magnificent-koala-acbb07@lemur>
References: <jofkov3n2txywxkiri6vbatynobleocsjphu64gkv7wgc4v6mx@xtvy6gm3yhdu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <jofkov3n2txywxkiri6vbatynobleocsjphu64gkv7wgc4v6mx@xtvy6gm3yhdu>

On Fri, Feb 28, 2025 at 01:42:40PM +0100, Andi Shyti wrote:
> Hi,
> 
> please find attached my signature with updated expiration date:
> 
> 0BAA159BA80750A9.asc

Updated, thanks.

-K
