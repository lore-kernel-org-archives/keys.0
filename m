Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F2F1AE845
	for <keys@linux.kernel.org>; Thu, 12 Sep 2024 16:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726159561; cv=none; b=nZJ9CkqYvv6k14pwqKChQCmPo6M8+t9gtZ1PUZ/vJYb72ixNwRM44/cHEQeCnMRUXZjazOiI8SqpesCcNqEZo9RKPxo0sYKFsx1vcaUwj0d5h/aci+Bvs+OnEkwQEUiaLlKnADUbKBPATUX5zinM/kCj7eJbxr7asZe73TPsSno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726159561; c=relaxed/simple;
	bh=jSnIXmIxgY9fbdCI11qV/95kidcbENfpYullL+EfxlQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Okx2V2R9Z1Dq2QCRM2+2ReWU4LOlGE982nrQ4UjqWKjHpPdxLbdnADj538PfYgCMGhLUG9V1NbwZFmoQgNmj0AqC8yFEO5YLptt+PScXQRBRAzUISbrMtjM5ziZtz7m79Wk+/sths1EcQOaaH9VehDfmzqNehd2Duhry9T1t5+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=VPmMEhTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="VPmMEhTY"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17EFAC4CEC3;
	Thu, 12 Sep 2024 16:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1726159561;
	bh=jSnIXmIxgY9fbdCI11qV/95kidcbENfpYullL+EfxlQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VPmMEhTY3hIxZ8ZMduKwhD/0B4Zo8LELz/6Hj/yGlec6gnhyiBQTuvk/SRHMOFjzW
	 kDpqn332H4rOw2fzDdKBTCorGlp1+40Ea85wozpBVlLUNa6LM3owIjPuj9RQGfA1tV
	 uTLYDcapuThtmlqaljvQE9E4CT/iced/fOv4DDII=
Date: Thu, 12 Sep 2024 12:46:00 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: keys@linux.kernel.org
Subject: Re: Update Expiration for nferre@kernel.org's keys
Message-ID: <20240912-acrid-blue-mackerel-fe0824@lemur>
References: <cc4ce3ff-5419-4681-bb8c-d4d9901303f1@microchip.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cc4ce3ff-5419-4681-bb8c-d4d9901303f1@microchip.com>

On Wed, Sep 11, 2024 at 07:20:21PM GMT, Nicolas Ferre wrote:
> Hi,
> 
> This is my key with the expiration dates update. I also uploaded it
> using https://keys.openpgp.org/upload/

Updated, thanks.

-K
