Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DC41BF33F
	for <keys@linux.kernel.org>; Tue, 27 May 2025 13:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748351321; cv=none; b=kSLUd+1F5gfS49NtF3z9nRsuHCgsSyHMQmc3OdICNYeRA0eYE6WO0EcAIwuvF8LPmHVLegL+HIqTCVS0BnUwkEAnwojiecU8rMyHzCvN4T6+wWXxvNoR5IzSJFCcng5bFg+NJopzZlx82rPEn0710Nmwddx+XTV/IJ9/ZiGtLmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748351321; c=relaxed/simple;
	bh=4+Snhhm72kCVAze2S30YUYyYLdp7Vu3/srVeeidhp5k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sNOsOMW1UkeMKNOhHPyPZq7a8Leb2ez8DOoi6iDEjz7Wui+lh/dOsiOxUlpsghjVHwYpxuag8WyF7d2TeTLaC0RcmzMb88a8nNtR8IgahGequAlQZjKHp4BFc7/zphBgw1i6vtDs3yrM20+bDMWP2w7+EcpNu1ZEyCyYdw1AV8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Y3+0+a+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Y3+0+a+m"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10961C4CEE9;
	Tue, 27 May 2025 13:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1748351321;
	bh=4+Snhhm72kCVAze2S30YUYyYLdp7Vu3/srVeeidhp5k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y3+0+a+maBoWH/8aYX0ON0a4sloQu7WN0JSlP3AtZXLOVeIdECJg9Z9eZWH1W11Do
	 84nH355BEGDl9kcHxbp3TWWtUXPGSRooCq/yTtRQE+O8VihNI/TDCkTHuWMCW2DcOJ
	 b7k35mEnkYrFvHGt1AjUT/dWr2b4CjnztHrDHh0M=
Date: Tue, 27 May 2025 09:08:39 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Alice Ryhl <aliceryhl@google.com>
Cc: keys@linux.kernel.org
Subject: Re: Refreshed key for Alice Ryhl
Message-ID: <20250527-jovial-mamba-of-philosophy-eb5e7a@lemur>
References: <CAH5fLgis1_uZCmwUHkqCbtXkJV1ph2-qQ1dqcqPOhGFGyon_Vw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAH5fLgis1_uZCmwUHkqCbtXkJV1ph2-qQ1dqcqPOhGFGyon_Vw@mail.gmail.com>

On Tue, May 27, 2025 at 12:53:19PM +0200, Alice Ryhl wrote:
> Hi!
> 
> I'm sending an updated key with additional signatures. It looks like
> the periodic update picked up only the addition of the kernel.org
> email, and not the new signatures, even though I uploaded both to the
> key server at the same time.

That is correct, we only pull in key updates from keyservers, though that may
change in the future.

Your key is now updated.

-K
