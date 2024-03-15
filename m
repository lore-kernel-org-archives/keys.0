Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B32117BB4
	for <keys@linux.kernel.org>; Fri, 15 Mar 2024 21:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710537826; cv=none; b=kHEIbBdmJb8dvke0kALUEBILZFad3wQxaVWgIDnSVdaakzvn+rbgSKjbz0ChICIhn0Qqg7kV0MTb8IMFCybWYAou0qlKxk/0o3w+kWgQRZcq41KbSImE4VB46ViOM1kvOMIAy92nPFNngKgQ1kzaMRSq7aCO0N+gfbd7/82YzhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710537826; c=relaxed/simple;
	bh=xRSC/GyhrdAV50MjSbhRvdxpzA5QSQXErOl1DBfXFe4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KvW1SKsrr/W869KXmTVzL2Gdul+pDscCjHQIg0VZS7wta06is1WbsBQ1Y/375eahP06ndkyskSNXVQlgjHO/JtDRdNRRXszebE8pXrcVFB8mqU+eJJ4u1h+on820YRRe/ZRShmmvSb4yypNrsJZGWktpi+n4OAU7hkq/B3AIENk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=VzRtDxMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="VzRtDxMb"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66D83C433F1;
	Fri, 15 Mar 2024 21:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1710537825;
	bh=xRSC/GyhrdAV50MjSbhRvdxpzA5QSQXErOl1DBfXFe4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VzRtDxMbUrPVed8/vbd3De/O1X6okGPHXwS03EPHqyl2Ec2q3jXumCeDuGUBK2SDo
	 AfqOy6tcgVzImHhBdwZ1KZeeRPBWID4x1hJoS2XeMH702NrtcbTAV9jgBMCZGh5Iq2
	 29puFKpLb/IIQAj3UKM/oSrL/TXjZGygQtJYrQ80=
Date: Fri, 15 Mar 2024 17:23:42 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Eric Van Hensbergen <ericvh@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated PGP key to remove typo
Message-ID: <20240315-large-sturdy-zebra-f8def8@meerkat>
References: <ZfSK062U9q4xnSYF@1149290c588b>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZfSK062U9q4xnSYF@1149290c588b>

On Fri, Mar 15, 2024 at 05:52:19PM +0000, Eric Van Hensbergen wrote:
> Attached updated pgp key with typo uid revoked.
> Already updated on openpgp.org

Updated, thanks!

-K
