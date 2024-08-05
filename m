Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2567B17C64
	for <keys@linux.kernel.org>; Mon,  5 Aug 2024 16:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722875962; cv=none; b=seVkI2Ahl7se7xYzBUkw67/aWfiuQjHdUgQdjFRlGqPS9PPyWp/VEz7u9Q/pSVGPbkrU3LPG7RRrffqWeVcdvC0nBUnR5CgTqGyF3A+HoAa5HPe+RUSVpqsMRKp3dWgArO1RMrH0FIoaYb3JGYLKBHcO35PVCh/hf/uGjNuE0Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722875962; c=relaxed/simple;
	bh=/IS1Ow9Chd2CcLZi6zDg7kThK2ydh0ctooiDixLZlco=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AMIFfDYaeH6yHNdkFV6OIwwfZ9BLiqHGO2PLb86LkUcLTAnIl80AbQMS+vcuGVof3z9TeJBXT6PnWYURUF4STTt5uAifvvW0t6ZxXdF5UH3IvkwwGcBEV3g93ea6cw0pv0WBrEG5a05mG5y6dESYrJeQycr3NeKZ2yvxd1qsTDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=S82mb8tC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="S82mb8tC"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B758C32782;
	Mon,  5 Aug 2024 16:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1722875961;
	bh=/IS1Ow9Chd2CcLZi6zDg7kThK2ydh0ctooiDixLZlco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S82mb8tCSdtDupIGtpnf3CnHClh3RkoS7TA+PSxMsbLibSNLpRvEOGfbXUXBEV7Rx
	 cbNQSCv6eHlyBM7HyBkhiJvl0CrdQK6OgPFPkvcSZAh8UcnEquzx++KBSCBP3r6+oC
	 6feCtFcSdrO4Y0SZI4xI3+cXTf21GaEkhPnXfurc=
Date: Mon, 5 Aug 2024 12:39:20 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Roberto Sassu <roberto.sassu@huaweicloud.com>
Cc: keys@linux.kernel.org
Subject: Re: Add Roberto Sassu's key
Message-ID: <20240805-impetuous-wildebeest-of-fruition-f2b79d@lemur>
References: <ffc6a5a7542271f008ec497f1f13a29f6b9d83bf.camel@huaweicloud.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ffc6a5a7542271f008ec497f1f13a29f6b9d83bf.camel@huaweicloud.com>

On Mon, Aug 05, 2024 at 05:50:48PM GMT, Roberto Sassu wrote:
> 

Added, thanks.

-K
