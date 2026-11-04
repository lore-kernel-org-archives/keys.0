Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793757574;
	b=Uf+3mXaRFFQLvRndX/aHZqIR4dUV8G0i24Xtjt9zWmyJp4HoObn5p0H5By/0XUByePuM
	 71hnT0mIrpNhElKRg760pQ5y2TMier7nZGAdI84jy+tXiovF+zDVDLUDxMsfMdJZtRUqd
	 d9nOWd5MOgowAYYF6lnv7qcEsYVZJOZdrpihSfO8F9vb37TikZ8bKOCMkAoeqz1AcHYOF
	 C8zQQIlTWJ9n+pilvSUdMGTSBdbbJ0JF1D2NVQ9ICxNfKw/bSFi4eok8IKSOh5jdq2L67
	 a7UOApwMuqIdPndreGNOaVXkQ/XfV+TytvtVnFG/ulR3udNcqP7hxcIoALP89mzhxuQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793757574;
	h=Received:DKIM-Signature:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=nx/j7VfQ3iCOgleKNTGllxVs/S6Zxsdw238VuN96wa4=;
	b=d+CEYpobbH+HwFbpzNyvNLiK7tOtGj07Cy88thV2F5dQZR46TwRUmgAC9d8vOTd07br/
	 G0TQpqIoOyDvIyQf41ms2YcgLdcrtoaHNDdKWvVwZVDJml1Amoxi+l5wmGL+gWSSV9m9w
	 Y/a2bs1WxiBCnyAuZYx/XVHY8O30t6Iqv0Di2sP1MkkAU3Ba+28zyWURnZlH5t3MaiOMZ
	 hrREb6UF9b4qZ88Me4y9a3AQaNr+Qw1y4a3x2NvhDP2J41KwZMAw28DKsDRb5Sk3q0Ipk
	 3TLJ0SjFUYLzPqVkkeHkrS23+8HdDk5oGO1SENDWYvCjEL4ghFBNUpW3Lj5MOXhlxUA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Pi3qGIg9;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF7D606A326
	for <keys@linux.kernel.org>; Wed,  4 Nov 2026 01:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Pi3qGIg9
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 127461F00A15;
	Wed,  4 Nov 2026 01:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793757574;
	bh=nx/j7VfQ3iCOgleKNTGllxVs/S6Zxsdw238VuN96wa4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Pi3qGIg9z+d7TVJy4/JtH7X9FXynumzU84wZsjywHkI1RH14gRnzaZcBDIdIJFHFn
	 cD4I4c501ybMQnqa9gkh5PoSo+EkrFgff+aJYWzfyQNB1M5jHV1CfWnBGtAGksRWBM
	 KGj7ly65a2Jtq0n39/wQJax41v2AGm9vYOyPLAONPVfANZKgPb18gkxjGGipPfrQJ7
	 FWkn2pVgIuvKJ9GMv5/GhW/wT/t32frismuYjIQJ5UdXtPYlf55LhRyPFR3hMSSmyC
	 wBmxlku1AkdRJzsPZd2hiKHE7gELA8dBkfmlGR1MvgpvqPevUf8icVfRaFD7HTwOXN
	 iOYmcwpvIxObw==
Date: Tue, 3 Nov 2026 20:59:32 -0500
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Kameron Carr <kameroncarr@linux.microsoft.com>
Cc: keys@linux.kernel.org
Subject: Re: OpenPGP Key
Message-ID: <20261103-enchanted-mutant-avocet-2eae8b@meerkat>
References: <bb0b0936-a411-498f-adc0-8152e2ce661d@linux.microsoft.com>
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
In-Reply-To: <bb0b0936-a411-498f-adc0-8152e2ce661d@linux.microsoft.com>

On Mon, Nov 02, 2026 at 10:16:48AM -0800, Kameron Carr wrote:
> Attached is my OpenPGP public key.

Added.

-K
