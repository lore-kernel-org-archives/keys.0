Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793126194;
	b=ZxGzGyNM8Cl9q6jE91jVKeKnwCVd2jTNNTZd+Wev3jSTx3fBVvFg/JLKt/vnwgY0okD2
	 wB14eDQsnyIaQiwZAo6EewdSCnzCGakTQ5u8Y15GVpYuDMOR9+W4f99Ou6/Cq6xsJTSnf
	 li7TSbyiwiC/HhagbVRdLbc8yw64vpoAUeZpemYRARzEYsZBkzSrzh9jYvQ1MH7i5EkLp
	 qMM/u0Jxpi37kboU7WcqntXQrB1lpeRFTGXtf1boVAvOj10sb/SeeKgPIj947cBRnuudH
	 W/hcU2Y5H+fqzuosDoEn8CRZHOYZLq78PjQfk46ZvxOj5sS3z7PIjas5WIzLk6nKkdQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793126194;
	h=Received:DKIM-Signature:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=ng/bKKuNI/oNw4UB+nUETZsI474Db77kPknl0wT6EkQ=;
	b=SgsxHJS28WH90NSAqykIroAqWqS8WK2eRKQ261i2XhNIKY1xTdNzgGNK+krUx8hZtugI
	 oXrqMj5AaIu0cMtBwlOhEcv18s/whv60LrDoA+GaIZd4qNc4KgW5ToDFVAzy7qEufm7hg
	 uKmn0o7CrfNGF1JSTLQvF+MV/081lBDN0CTf4mX6t5LerJQPknIiE1jeRgOLRon2r2cWB
	 Uug+CN1v65ivCdG8ET1xK0OS/gHRTAvIzyZ2uZWyaQPDWMbTQe5LaF6UygbBpxGPk2f7G
	 9y/1pGNckJtHa2feZD5jIAWr+/W8fo0KfRAguNm2CS2GuPRXeFDQFLIi5jcrlcTOvyQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jhLjHy4c;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14894606A326
	for <keys@linux.kernel.org>; Tue, 27 Oct 2026 18:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jhLjHy4c
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 531F31F01825;
	Tue, 27 Oct 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793126193;
	bh=ng/bKKuNI/oNw4UB+nUETZsI474Db77kPknl0wT6EkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jhLjHy4cpKAg8qbe8p9Tm0RQ0G1yU1bKBscaYvFQZB4BiwAa+rAettjiUoMAAao84
	 7XIIBvtiQp/+C4g1WCiXNTOmA/E+lsBEdn6UBzV7M9p8MAr2vHqzfP/wtRyDk1YTlZ
	 83woWxiKpKi5kO3ypyKoax779HZ9HF10+cZ6BQYbbMjK5oFQHQ38qucn7xyTsq/zzz
	 CdwGQE0DcyX0nafUGF7TXxVhGb6Sa9DOBjF5JyFrFQS5VzWizW9JfA0VkBFoNwJMFO
	 JgFXrj2PYqXCCgfDoUcQEmfHLNP5iJaR5X6yNFd/Z0Tmx2JS7M2ytv+hmMe/shymJY
	 MZf1DCjOjBNSg==
Date: Tue, 27 Oct 2026 14:36:32 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Julian Braha <julianbraha@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Key submission for julianbraha@gmail.com
Message-ID: <20261027-smooth-eggplant-swift-2eefa1@meerkat>
References: <bb0b6939-d353-4703-9841-26dcc0491872@gmail.com>
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
In-Reply-To: <bb0b6939-d353-4703-9841-26dcc0491872@gmail.com>

On Tue, Oct 27, 2026 at 04:59:40PM +0000, Julian Braha wrote:
> Hi, I have attached my GPG key: DEF5E89D3A6C6B7C39450AA90664101D2FC252D1

Added, thanks!

-K
