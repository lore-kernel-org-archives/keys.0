Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1A61E5B9F
	for <keys@linux.kernel.org>; Thu,  5 Jun 2025 20:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749156159; cv=none; b=eBuvJJRd1bNtKhaIrfBZAsApWe+6EADcNpRxcSPx4PemfsloVA+/d2PNYmTQdk2ia2w9VbG78qqjIt+KroGeaLDFVFPYsyyOwtW9X1NZIN7OQvJK4XSGc2Q7mqVDTHUC2JZCwz+0xeFxqZuPrBxQehBfdX3V4KdTRunG0z+xrms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749156159; c=relaxed/simple;
	bh=wFdr0L+BWqlGmUbdK/8TCDCL6zs8msy8NaKrmIjHsX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pcRFJ5vWO2O9Vx3EodY4P49nnDTHb8XAphhR5fHB1ChVQmv04VuMrvusYZZAyk17C3h37+5OKLqSxBn9rg50RFgF5FWU/+NID8846af58fQh2R53Thxh3M1PozaiHW9rcD0i12CgU4rgO6gi5c94xoaf/jUK1PvkmEx3TUhGrSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=RztK2agv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="RztK2agv"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 247FEC4CEE7;
	Thu,  5 Jun 2025 20:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1749156158;
	bh=wFdr0L+BWqlGmUbdK/8TCDCL6zs8msy8NaKrmIjHsX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RztK2agvnV/qDmz3OWZlY08IAbt6Ke0GGLDGDmWLqNiaLIhMaA6KICEAJSi5CVbp6
	 JqKXID2hDN3e5tHpe+0eBLH9G1aoSwzFFVy0zCWPpd+B0963JOtCWj4fqoE2XLjxIt
	 /Q8STT9xXxA1/X9aWnRHsU6EffbMDNgkUvMk9bkA=
Date: Thu, 5 Jun 2025 16:42:37 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Two new signatures for Krzysztof Kozlowski
Message-ID: <20250605-functional-grouse-of-warranty-6be7ad@lemur>
References: <6e9b71f1-d859-4f53-8cc7-da8982eb217a@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <6e9b71f1-d859-4f53-8cc7-da8982eb217a@kernel.org>

On Thu, Jun 05, 2025 at 09:27:27AM +0200, Krzysztof Kozlowski wrote:
> Hi,
> 
> Updated key 9BD07E0E0C51F8D59677B7541B93437D3B41629B with two new
> signatures.

Updated, thanks.

-K
