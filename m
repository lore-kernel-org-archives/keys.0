Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3717916C690
	for <keys@linux.kernel.org>; Tue, 25 Jun 2024 14:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719325091; cv=none; b=XRPpHTu8nx4fMn1RhvOp19fUYKObap8WjfTJ/ehI6ywidbTf1IrmiGyXasZPmGQdjJGgJBwajVMhS0wNwGWPiGJnVYwj+N9FYPRIjXNwrYO3gf141mwMsmPfQFp5sLULIoo18ZswlGohJyI2J8FTo5kTg/e7xUjyJv3rxlwoG1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719325091; c=relaxed/simple;
	bh=79zlTAHLBNUopx3a2xKp+lUMwl1ndTpsODfkQFup1xg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YgEnITskvgxlaodDOczeyhtuOr6WPEFVGtdSag/6NJMfh3ucqthNCaumFe3FV/BjHG8mE/gyqBxpRvPKV5XIjfCxYdQPp9gQLyUELxt+sQ6DvOd4U36T7asglvybJEbyzr+9JONaeghsFdR9ZDptnzU+19ZobZrL772V+OSlT5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=djUoIyMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="djUoIyMc"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E453C32786;
	Tue, 25 Jun 2024 14:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1719325089;
	bh=79zlTAHLBNUopx3a2xKp+lUMwl1ndTpsODfkQFup1xg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=djUoIyMcnhsqm7VICSYQkL0jOplM1vjj0LorJaYDDSP8wnnIL0pdOqhvjHDKXegMg
	 RWtzSkNiDR6jIFt2Aki6AhsVHSyB34s3MBmhjRr3aZambwRizAM+JPbcWqZvrRlNCh
	 2zZqbnYKPNqCAcqp5QaCrN46yKnSBwkmLbblrFWY=
Date: Tue, 25 Jun 2024 10:18:08 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Joel Granados <j.granados@samsung.com>
Cc: Linux Kernel Keys <keys@linux.kernel.org>
Subject: Re: Revoking a subkey
Message-ID: <20240625-brawny-resolute-partridge-ad5976@lemur>
References: <CGME20240624195935eucas1p2e50f4be03654cb8051b2dec45ce7a52c@eucas1p2.samsung.com>
 <20240624195918.dhbonudmhnayiggu@joelS2.panther.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240624195918.dhbonudmhnayiggu@joelS2.panther.com>

On Mon, Jun 24, 2024 at 09:59:18PM GMT, Joel Granados wrote:
> Hello
> 
> I'm looking to replace one of my subkeys with a new one. I have one that
> is E and another that is A. My third one is SEA and I want to just
> have it as a signature key to avoid the annoying situation where there
> is no consistency in the use of my encryption keys. Unfortunately I have
> not found documentation or precedent on how to do this for the kernel
> 
> Does anyone see an issue with me just:
> 1. Revoking my SEA subkey
> 2. Creating a new S subkey

You can also just use gnupg's "change-usage" to drop E and A capabilities on
that subkey. This would be slightly better because this won't require everyone
relying on your signatures to update their keyring. See the manpage for gpg.

> 3. Updating my key through this list

There are no technical reasons why this wouldn't work, but there will still be
a long tail end of people using your SEA key for encryption because their
keyring just never gets updated.

-K
