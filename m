Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9AC1FC10E
	for <keys@linux.kernel.org>; Tue,  4 Mar 2025 21:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741125169; cv=none; b=fkE329oSkJgFM2efWXSRxm7P7+MsU9oMJompuFjH4sVnPKPmnTleZZNe/Avuu6qFoJ1V08DH9c/Jyy/H7FEuB+MQn/xjCcQtil+Hzj5rH3eUrXoCSg+r+u6Cq/cuZdfJEOIjB2KibBZIlrG4ZPwrW4Atbsd7XsfIFNKxzuiHIss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741125169; c=relaxed/simple;
	bh=DFraa/pNho07fGd1Acft04EbO7vul9eC0oTUsNHDOVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Az5Fgifc/SP6L8rp8d4J9z8lM9W4tsxaQ5wkMm4FBo61JCuRnzJW6rSj7Sv6DMKrQtvL+dJEE9F/X4pI39jHzLtPduyexeYlvBCCYOLhj/ievYpLNEZfGC77GRhLRg7H9E3I9oxG6Xb5RzDpOEUg2D9n4UHciVVJZPuE28xqBbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=A1NG9iAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="A1NG9iAe"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B18DC4CEE5;
	Tue,  4 Mar 2025 21:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1741125168;
	bh=DFraa/pNho07fGd1Acft04EbO7vul9eC0oTUsNHDOVM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A1NG9iAeTdWfvME9EWUBfE5l6gPagOIJSSyLkTVKfpB+bHT7yaFEZY9maVn7VN/vF
	 OVMF6hPbUR+KUKew/t4F0HyijIpXHXORS/G4qM/BIYJ1tvcFimh9sbDUdO770Cljq2
	 vep9Nrf7RfHrRcMqMbLX8U7CPoTlWmMSMJ93rfu4=
Date: Tue, 4 Mar 2025 16:52:47 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org, Kevin Hilman <khilman@baylibre.com>, 
	Ahmad Fatoum <ahmad@a3f.at>
Subject: Re: Keyupdate for Kevin Hilman and me
Message-ID: <20250304-lumpy-ubiquitous-honeybee-23aac1@lemur>
References: <2ope4rjik7vfubpc5e6s3q3x3yeuwuwfagk7qm2ii7bshz45vn@zwknoaf7whoj>
 <b2il74ut2kchr2iqbtqtfoekrwyyhilxqxm3ufizxu5xumxerz@qhxiqpbuksw3>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b2il74ut2kchr2iqbtqtfoekrwyyhilxqxm3ufizxu5xumxerz@qhxiqpbuksw3>

On Fri, Feb 28, 2025 at 11:12:11PM +0100, Uwe Kleine-König wrote:
> Hello,
> 
> On Tue, Feb 18, 2025 at 04:47:55PM +0100, Uwe Kleine-König wrote:
> > find attached the recent version of Kevin's and my key.
> 
> With the recent changes to wotmate[1], Kevin's key as attached to my
> mail won't be importable any more. However in the meantime he fixed his
> key and so an improved update can be applied using:

I've pulled in the keys and the changes from keyservers as you suggested.

Thanks!

-K
