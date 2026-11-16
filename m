Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794845983;
	b=o5WzSFJi5GyyuzGW7/+B8AuKXSfSgeNJv620NCmKWkoBbGz6abEAaymue0izMr2yEl6X
	 vdKzo3PsYHDis1mcprFGzYSgDcfYbELjp62gvuOeh1PuACB4CPwKYskZnKAXbLOG0ICCI
	 zJTs+H6HVo1nZvvMnSFloI/5+jyBpWSiBxFGJo20M6U9DIaiC8AZZ2J7L/cC8V/PKfQA+
	 9fDOcMIXgPVVGppkx4TdHNJwnfn9FCJvh3WDbf9F3W2WkPwSPBfhz+w31c53fzR3Ap3fm
	 cvHKtImIj/GddfY8JkYiqgcdcut2KNVCY+UPmaza2MOD9Ot/IYAFZbz+ZGeCX6fTmBA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794845983;
	h=Received:Delivered-To:Received:DKIM-Signature:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=ArobuetaFnTp22Ms3XfLwzR99U40VSRsDjGF7j1Xzhg=;
	b=jLQUypVk+1oUa23VrDdS8V2prStdTS01/tHVYWk9EFFArR4CeZuBiTpwxAs15wEzHF3+
	 FnBu0/O7PNW+yJ97RcEOJ2Lx1JgoC+8KSQ1vVbQ1g4qCjjm9RiW6tYq8L6nMP8wOlOvvO
	 gi2lR1hjRcieH4xUk5IWh2swlSyYB2B2+j0FlaC+jHHoAm2P8x3g5QNQh/9ya0C0oTrXV
	 SVi1Waz4NJcnVx/Rzk9zmoXbf7bQbuD8LE5Us6Q+j91bm3vOrXpOlt3vb6cijh+UZnHVM
	 jw/xG1b8J+vnd+BV/bZXTp+oab0RckvgGz53fSGu70ZsbyrEhIw7vcPwE2sAnufc8uw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=h8M49wFV;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAFC606A31C
	for <keys@linux.kernel.org>; Mon, 16 Nov 2026 16:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=h8M49wFV
Received: by smtp.kernel.org (Postfix)
	id E41531F000C9; Mon, 16 Nov 2026 16:19:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 923301F000C4;
	Mon, 16 Nov 2026 16:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794845982;
	bh=ArobuetaFnTp22Ms3XfLwzR99U40VSRsDjGF7j1Xzhg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=h8M49wFVc8Zk1Drg8gAYIRNFyUGFahJHZijmmWrPkqbZlJD/yIe8Gv4qsWKSRpg1N
	 Fz8bWiKfVMGu4w5yeH5XI8I44WRClQ/U3B3W29xQOlSIHzAqmcU02rPDzS+pjQZTKd
	 3Re4jfA921b4AH6e01LdmKw/OlcrKQIOP4p0ZYERaO6S3Y3t/uN5WWEIyvYg2qYUUR
	 x7S6U8vGlGXPnjZwg/twjuvf3ysO7bHdJVE6UUOyss61Vq+Fbfm7Hgwgd98x8FykCW
	 h/gX9qbTv+Pqax1yJPqDvmDU0BsU0KkHBS+deQX9Spgkd6zTYC7AvPZBxW3c8eWnu4
	 DqCys0dO3nesw==
Date: Mon, 16 Nov 2026 11:19:41 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: keys@kernel.org, Juri Lelli <juri.lelli@redhat.com>
Subject: Re: New key
Message-ID: <20261116-imaginary-coyote-of-chemistry-cfafb5@toolbx>
References: <avcPLMVwvkWUEpJe@phoenix2>
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
In-Reply-To: <avcPLMVwvkWUEpJe@phoenix2>

On Fri, Nov 13, 2026 at 10:22:52AM -0300, Arnaldo Carvalho de Melo wrote:
> Hi,
> 
> 	Here is my new key, with an expiry date, signed by my previous
> one and by Juri Lelli.

I've added your key, but Juri's signature doesn't match the key we have on
file, so it's been discarded. The key we have on file for him is
BA2A558FF4ED722E and your key is signed with 1AD68C9C6DD9111F. If it's a new
key, he'll need to send it in.

-K
