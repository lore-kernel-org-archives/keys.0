Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF1E1662E7
	for <keys@linux.kernel.org>; Mon, 14 Jul 2025 19:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752522119; cv=none; b=J7SjZHXUC7bg1pmuT1VyabCY0cInnNAxy7Wcf1237aualq1Z93tiqNq9AoITFHEM39sX1LooUC7hmwaeyM5KVXApcr2ot5tPEFsrAjqDxq0jtCqc8liIPRCOH9D2le9MBp1JiihdtvbZrimGNEvZT/GtMcNA6bQh1G0u1KrT4wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752522119; c=relaxed/simple;
	bh=jnPfDZsjw14bZbaCpJOux8W9E0hoiroox5xXzor9+No=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nP/yY2Z57Zn1CVZpcUR/9lvsFsX4CuesE35POoxLE8R6sznbpBvjh3+qhukGo/kZTEIpQo9MJZrU5jNMw4q7Y6Lsqwl/PaxlbjFGFz1QjMmugxERnf1M3GhzOtn8875KV2+pvbX61q6z3ZNUdUCFtXkFapqRmYA/YX2lwD4bQFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=G2PxGpeC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="G2PxGpeC"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B95EAC4CEED;
	Mon, 14 Jul 2025 19:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1752522118;
	bh=jnPfDZsjw14bZbaCpJOux8W9E0hoiroox5xXzor9+No=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G2PxGpeC9Hzd7IF7CSs8x9JZzmGjWQIwhSB44rptLY4xqzcXnjep8tP8yCd636FVK
	 DzaCF+zDBguz1ufTY+VAbDcrYOzfnqWkislb+y7/IbsIJ5eZ7+O/OWUT1n2n7MTr8I
	 fM8R2Yip4AaAmlusRVdYSJGnv7TBloQwoIRE1cR8=
Date: Mon, 14 Jul 2025 15:41:55 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Vineet Gupta <vgupta@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Please add key for Vineet Gupta (ARC maintainer) - updated
Message-ID: <20250714-serious-divergent-gaur-5aa55c@lemur>
References: <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
 <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
 <CAMwyc-TV9r1NNx5BPPjtqbdpLuXkT0oyqLb+S9yEcxFdOhB8Og@mail.gmail.com>
 <6776b85f-a616-43af-a16d-e891a86b1a7d@kernel.org>
 <mxya6iam6nhrdhj5ens4j3ll6mth7uwwygari3wvbpanxllbgg@pv5nte4y56nt>
 <d622b123-1a1d-490f-b008-6e68954b0dda@linux.dev>
 <2bcs4mgkrycgqfydfxt3cucw2cd6vvbpq3snbsprf27fyc72hd@ihikzjxerftf>
 <44898d39-ca32-48e4-a7eb-8f572c12c488@kernel.org>
 <ff756e69-1a87-4c2a-91a7-e683439c2600@linux.dev>
 <31ef5a98-dcc0-4313-966e-231a63907f12@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <31ef5a98-dcc0-4313-966e-231a63907f12@kernel.org>

On Mon, Jul 14, 2025 at 10:01:50AM -0700, Vineet Gupta wrote:
> > PFA attached my key signed by Anup Patel and Alex Ghiti, for inclusion in the
> > korg pgp repo.
> 
> Ping !

I've been out for 2 weeks, sorry for the delay. Your key should be updated
now.

-K
