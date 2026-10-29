Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793241956;
	b=je8eaV9b5aMN+kIZT0ngaiW0B3Yv+TMitr7esutxTuPMHe600mg/z7gJ+4V5a+qfQAGT
	 RRnxOYpTkxrkfT9kH9CLpJ9V/wtoDtzpTi6/+X4feLX2BIfmtIVUPMSrTyEnyD6fhravx
	 0qi+dnzI1iZD5YTTJlZPfIQROhAKW7kdcoeddC6K9li9LuO6KZDj/MsupfSx5B+wnzs9V
	 jww3Rg92UPgvbXgUb5DBXH0+DbeqV1ZRoI60yYHvNO8bOHLyWah31DpZ576s1/PhZybdm
	 ec9TwwK0Ht8miAUFLTg2VU0f3m+IdFxQfDEL8HV462PkE0bW7QzBQeJysOvdrgyvk5g==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793241956;
	h=Received:Delivered-To:Received:DKIM-Signature:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=IvXfdPWIHK538zuIkYa+k3ki634U/4NMn8pebyFZbzs=;
	b=VqmRswbX98MRermHXkzVqWaKwwJSMYURxGvitKJnWjVZ+wexQk+nzM0Sfg7q+xUoKFVK
	 NsnREooVBGh4ev8xny2osQVpO63VsoMXDmkTYNjoXhcN0Ml+jikPuE0mJIhJ/UmEHywxp
	 bvgqz/gpUEB26Zj5b0L/7ukXvZ9vBt2pZxit8yxMKPnsyBizRBd3v6vuk04F5Ecr15Il2
	 TF2vu4eYrw864s1a7HJism0yTuOBHSb1pTT6U+NtcYb7cRAicBZhl91J9SweycHIESONH
	 PScMxWg6npXi8lCUYJl4VBr/0MoF9g8IE7yzHQk5GCC3Qk74duiWH0bnh8BxR7BYL7Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EXgM7dU6;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E106A606A31C
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 02:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EXgM7dU6
Received: by smtp.kernel.org (Postfix)
	id 6D73B1F01828; Thu, 29 Oct 2026 02:45:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25F3D1F01825;
	Thu, 29 Oct 2026 02:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793241955;
	bh=IvXfdPWIHK538zuIkYa+k3ki634U/4NMn8pebyFZbzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EXgM7dU6zhrucfrnDW+pWoOXeSqZkBeoP0N0v1o9kCtARi30wFVHzgyYokvWMb+ub
	 5AWHLNF6piLPeQ1wkuiDnHMtMb9Re9ustJe5EAym3YWCTshZ11zcEP1DVFyYzXncug
	 07CXcPKJRLAZ+UR+OqpPmXzqYfu4sDAuLVF5CgtVLdAfzqKSIw2mLM8EO/86zFTl3E
	 7bDQC3ZwtrRM75Ecsnvejzit8mxfLE7I2l4Y+jaL/vxBPDJOlpaGMzWIWElqevAzhe
	 c55PR0JkB4cZOc4G2w2tW6+YQgdsMdgG7Gp8U/OIwWGFv//Il6zIPNhGEhd0LSVuUY
	 RncnRtjVhlq6A==
Date: Wed, 28 Oct 2026 22:45:54 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: SJ Park <sj@kernel.org>
Cc: keys@kernel.org
Subject: Re: Updated GPG key for sj (was: "Re: Your kernel.org PGP key has
 conflicting expiration dates")
Message-ID: <20261028-industrious-sage-piculet-0b2a35@lemur>
References: <20261028-otter-of-theoretical-revolution-f1ef8d@vache>
 <20261028235747.166194-1-sj@kernel.org>
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
In-Reply-To: <20261028235747.166194-1-sj@kernel.org>

On Wed, Oct 28, 2026 at 04:57:46PM -0700, SJ Park wrote:
> Attching the updated key below.  Note that I use "SJ Park" as my name for kernel
> development now, so modified your above command to use that.
> 
> Please let me know if I did anything wrong.

Looks good, but... while I have you! Could you please run this script to
strengthen all the signatures on the keys you've signed in the past?

    https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/scripts/resign-modern-hash.py

The instructions are in the header. That should help improve the web of trust
in the keyring.

Thanks!

-K
